import 'dart:io';

import 'package:daymemory/common/custom_http_overrides.dart';
import 'package:daymemory/configuration/settings/configuration_settings.dart';
import 'package:daymemory/connector/root/root_connector.dart';
import 'package:daymemory/firebase_options.dart';
import 'package:daymemory/redux/state/states.dart';
import 'package:daymemory/services/device_info_service/device_info_service.dart';
import 'package:daymemory/services/navigation/interface_route_definition_service.dart';
import 'package:daymemory/services/settings_service/settings_service.dart';
import 'package:daymemory/services/service_locator.dart';
import 'package:daymemory/services/store/store_service.dart';
import 'package:daymemory/widget/common/settings_notifier.dart';
import 'package:daymemory/widget/common/splash/splash_widget.dart';
import 'package:daymemory/widget/theme/app_configuration_widget.dart';
import 'package:daymemory/widget/theme/theme_color_options.dart';
import 'package:daymemory/widget/theme/theme_initializer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void runAppWithConfiguration(ConfigurationSettings settings) async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = CustomHttpOverrides();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  var settingsService = await SettingsService().init();
  var deviceInfoService = await DeviceInfoService().init();
  var userSettings = await settingsService.getSettings();
  var lightThemeColors = ThemeColorOptions.light(); //await settingsService.getThemeColors(Brightness.light);
  var darkThemeColors = ThemeColorOptions.dark(); //await settingsService.getThemeColors(Brightness.dark);

  if (userSettings.language == null) {
    userSettings.language = deviceInfoService.localeName;
    await settingsService.setSettings(userSettings);
  }

  var language = userSettings.language ?? deviceInfoService.localeName;

  final getIt = GetIt.I;
  var serviceLocator = ServiceLocator(
    settings: settings,
    deviceType: deviceInfoService.deviceType,
    dependencyResolver: MobileTabletPlatformDependencyResolver(getIt: getIt),
  );
  serviceLocator.initDependencies();

  //initDependencies(settings, deviceInfoService.deviceType);

  runApp(DayMemoryApp(
    settings: settings,
    language: language,
    deviceType: deviceInfoService.deviceType,
    themeMode: userSettings.themeMode,
    darkThemeColors: darkThemeColors,
    lightThemeColors: lightThemeColors,
  ));
}

class DayMemoryApp extends StatelessWidget {
  final ConfigurationSettings settings;
  final String language;
  final DeviceType deviceType;
  final ThemeMode themeMode;
  final ThemeColorOptions darkThemeColors;
  final ThemeColorOptions lightThemeColors;

  const DayMemoryApp({
    super.key,
    required this.settings,
    required this.language,
    required this.deviceType,
    required this.themeMode,
    required this.darkThemeColors,
    required this.lightThemeColors,
  });

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsNotifier(language, themeMode, lightThemeColors, darkThemeColors),
        builder: (context, state) {
          final appSettingsProvider = Provider.of<SettingsNotifier>(context);
          final darkTheme = DefaultThemeInitializer(settings: settings, brightness: Brightness.dark, themeColorOptions: appSettingsProvider.darkThemeColors);
          final lightTheme = DefaultThemeInitializer(settings: settings, brightness: Brightness.light, themeColorOptions: appSettingsProvider.lightThemeColors);
          var routeType = deviceType == DeviceType.phone ? RouteType.mobile : RouteType.generic;

          var locDelegates = AppLocalizations.localizationsDelegates.toList();
          //add FlutterQuillLocalizations.delegate
          locDelegates.add(FlutterQuillLocalizations.delegate);

          return MaterialApp(
            locale: appSettingsProvider.locale,
            localizationsDelegates: locDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            builder: EasyLoading.init(),
            theme: lightTheme.getTheme(),
            darkTheme: darkTheme.getTheme(),
            themeMode: appSettingsProvider.themeMode,
            home: Scaffold(
              body: FutureBuilder(
                future: ServiceLocator.getIt.allReady(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return AppConfigurationWidget(
                      configurationSettings: settings,
                      deviceInfoService: ServiceLocator.getIt.get(),
                      navigationService: ServiceLocator.getIt.get(instanceName: routeType.toString()),
                      child: StoreProvider<AppState>(
                        store: ServiceLocator.getIt<IStoreService>().store,
                        child: RootConnector(deviceType: deviceType),
                      ),
                    );
                  } else {
                    return const SplashWidget();
                  }
                },
              ),
            ),
          );
        });
  }
}
