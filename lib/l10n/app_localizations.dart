import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('uk'),
  ];

  /// No description provided for @tab_timeline.
  ///
  /// In en, this message translates to:
  /// **'Timeline'**
  String get tab_timeline;

  /// No description provided for @tab_questions.
  ///
  /// In en, this message translates to:
  /// **'Questions'**
  String get tab_questions;

  /// No description provided for @done_nav_button.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done_nav_button;

  /// No description provided for @memory_hint_text.
  ///
  /// In en, this message translates to:
  /// **'What is on your mind?'**
  String get memory_hint_text;

  /// No description provided for @error_refresh.
  ///
  /// In en, this message translates to:
  /// **'Oops, some error occured. Ty again'**
  String get error_refresh;

  /// No description provided for @minutes_label.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get minutes_label;

  /// No description provided for @save_error_message.
  ///
  /// In en, this message translates to:
  /// **'Ooops. Can\'t save changes.'**
  String get save_error_message;

  /// No description provided for @finish_error_message.
  ///
  /// In en, this message translates to:
  /// **'Oops. Can\'t finish the action.'**
  String get finish_error_message;

  /// No description provided for @settings_page_title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings_page_title;

  /// No description provided for @settings_app_version.
  ///
  /// In en, this message translates to:
  /// **'Version: '**
  String get settings_app_version;

  /// No description provided for @settings_passcode_page_title.
  ///
  /// In en, this message translates to:
  /// **'Passcode'**
  String get settings_passcode_page_title;

  /// No description provided for @settings_passcode_require_after_page_title.
  ///
  /// In en, this message translates to:
  /// **'Require Passcode'**
  String get settings_passcode_require_after_page_title;

  /// No description provided for @settings_passcode_require_after_explanation.
  ///
  /// In en, this message translates to:
  /// **'After leaving the app, how long until a passcode is required for re-opening?'**
  String get settings_passcode_require_after_explanation;

  /// No description provided for @settings_passcode_option.
  ///
  /// In en, this message translates to:
  /// **'Passcode & Biometrics'**
  String get settings_passcode_option;

  /// No description provided for @settings_passcode_require_after_option.
  ///
  /// In en, this message translates to:
  /// **'Require after'**
  String get settings_passcode_require_after_option;

  /// No description provided for @settings_encryption_key_page_title.
  ///
  /// In en, this message translates to:
  /// **'Encryption key'**
  String get settings_encryption_key_page_title;

  /// No description provided for @settings_encryption_key_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter the encryption key'**
  String get settings_encryption_key_placeholder;

  /// No description provided for @settings_encryption_key_explanation.
  ///
  /// In en, this message translates to:
  /// **'If you loose your private key, you will no be able to access the data anymore. Backup you key in the secured place.'**
  String get settings_encryption_key_explanation;

  /// No description provided for @settings_encryption_key_copy_option.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get settings_encryption_key_copy_option;

  /// No description provided for @settings_sync_page_title.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get settings_sync_page_title;

  /// No description provided for @settings_sync_enable_sync.
  ///
  /// In en, this message translates to:
  /// **'Enable Sync'**
  String get settings_sync_enable_sync;

  /// No description provided for @settings_sync_disable_sync.
  ///
  /// In en, this message translates to:
  /// **'Disable Sync'**
  String get settings_sync_disable_sync;

  /// No description provided for @settings_sync_encryption_explanation.
  ///
  /// In en, this message translates to:
  /// **'End-to-end encryption utilizes a private key to encrypt your data before it reaches the cloud'**
  String get settings_sync_encryption_explanation;

  /// No description provided for @settings_sync_disable_explanation.
  ///
  /// In en, this message translates to:
  /// **'Disabling sync will not allow the app to backup your data in the cloud'**
  String get settings_sync_disable_explanation;

  /// No description provided for @settings_sync_enable_explanation.
  ///
  /// In en, this message translates to:
  /// **'With sync enabled, your data will be synced with the cloud. Right now, it is only stored on your device'**
  String get settings_sync_enable_explanation;

  /// No description provided for @settings_account_page_title.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settings_account_page_title;

  /// No description provided for @settings_enable_location_saving_option.
  ///
  /// In en, this message translates to:
  /// **'Save location'**
  String get settings_enable_location_saving_option;

  /// No description provided for @settings_enable_screen_locking_option.
  ///
  /// In en, this message translates to:
  /// **'Enable passcode'**
  String get settings_enable_screen_locking_option;

  /// No description provided for @settings_biometric_title_option.
  ///
  /// In en, this message translates to:
  /// **'Biometric unlock'**
  String get settings_biometric_title_option;

  /// No description provided for @settings_logout_option.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get settings_logout_option;

  /// No description provided for @settings_login_option.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get settings_login_option;

  /// No description provided for @settings_privacy_policy_option.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get settings_privacy_policy_option;

  /// No description provided for @settings_language_option.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settings_language_option;

  /// No description provided for @settings_show_in_review_option.
  ///
  /// In en, this message translates to:
  /// **'Notebooks'**
  String get settings_show_in_review_option;

  /// No description provided for @settings_review_period_option.
  ///
  /// In en, this message translates to:
  /// **'Periods'**
  String get settings_review_period_option;

  /// No description provided for @settings_geo_location_disabled_error.
  ///
  /// In en, this message translates to:
  /// **'Grant Location access to \'Always\' is settings.'**
  String get settings_geo_location_disabled_error;

  /// No description provided for @settings_sync_option.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get settings_sync_option;

  /// No description provided for @settings_sync_status_option.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get settings_sync_status_option;

  /// No description provided for @settings_sync_status_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get settings_sync_status_failed;

  /// No description provided for @settings_sync_status_on.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get settings_sync_status_on;

  /// No description provided for @settings_sync_status_off.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get settings_sync_status_off;

  /// No description provided for @settings_encryption_set_key.
  ///
  /// In en, this message translates to:
  /// **'Set Encryption Key'**
  String get settings_encryption_set_key;

  /// No description provided for @settings_encryption_view_key.
  ///
  /// In en, this message translates to:
  /// **'View Encryption Key'**
  String get settings_encryption_view_key;

  /// No description provided for @settings_encryption_create_key.
  ///
  /// In en, this message translates to:
  /// **'Enable Encryption'**
  String get settings_encryption_create_key;

  /// No description provided for @settings_clear_data.
  ///
  /// In en, this message translates to:
  /// **'Clear all data'**
  String get settings_clear_data;

  /// No description provided for @settings_clear_cache.
  ///
  /// In en, this message translates to:
  /// **'Clear cache'**
  String get settings_clear_cache;

  /// No description provided for @settings_tags_option.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get settings_tags_option;

  /// No description provided for @settings_syncing_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Syncing...'**
  String get settings_syncing_in_progress;

  /// No description provided for @settings_last_sync_time.
  ///
  /// In en, this message translates to:
  /// **'Last sync time:'**
  String get settings_last_sync_time;

  /// No description provided for @settings_signin_option.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get settings_signin_option;

  /// No description provided for @settings_sync_never_status.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get settings_sync_never_status;

  /// No description provided for @settings_clear_data_title.
  ///
  /// In en, this message translates to:
  /// **'Clearing data'**
  String get settings_clear_data_title;

  /// No description provided for @settings_logged_in_as.
  ///
  /// In en, this message translates to:
  /// **'Logged in as:'**
  String get settings_logged_in_as;

  /// No description provided for @settings_clear_data_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove all data?'**
  String get settings_clear_data_message;

  /// No description provided for @settings_blocking_explanation.
  ///
  /// In en, this message translates to:
  /// **'Secure access to the app with a passcode or biometrics'**
  String get settings_blocking_explanation;

  /// No description provided for @settings_show_in_review_explanation.
  ///
  /// In en, this message translates to:
  /// **'Review memories'**
  String get settings_show_in_review_explanation;

  /// No description provided for @settings_intro_option.
  ///
  /// In en, this message translates to:
  /// **'App intro'**
  String get settings_intro_option;

  /// No description provided for @settings_send_email_to_developers_option.
  ///
  /// In en, this message translates to:
  /// **'Write an email to developers'**
  String get settings_send_email_to_developers_option;

  /// No description provided for @settings_account_email_option.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get settings_account_email_option;

  /// No description provided for @settings_account_name_option.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get settings_account_name_option;

  /// No description provided for @settings_account_explanation.
  ///
  /// In en, this message translates to:
  /// **'Day Memory account information'**
  String get settings_account_explanation;

  /// No description provided for @settings_account_clear_data_explanation.
  ///
  /// In en, this message translates to:
  /// **'Make sure that your data is synced with the cloud before deleting it. Otherwise, you won\'t be able to restore it.'**
  String get settings_account_clear_data_explanation;

  /// No description provided for @settings_sync_error_title.
  ///
  /// In en, this message translates to:
  /// **'Synchronization failed'**
  String get settings_sync_error_title;

  /// No description provided for @settings_sync_error_generic_message.
  ///
  /// In en, this message translates to:
  /// **'Unknown error has occured. Please try again.'**
  String get settings_sync_error_generic_message;

  /// No description provided for @settings_select_theme_option.
  ///
  /// In en, this message translates to:
  /// **'Themes'**
  String get settings_select_theme_option;

  /// No description provided for @settings_select_theme_title.
  ///
  /// In en, this message translates to:
  /// **'Select a theme'**
  String get settings_select_theme_title;

  /// No description provided for @settings_theme_mode_system.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get settings_theme_mode_system;

  /// No description provided for @settings_theme_mode_light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settings_theme_mode_light;

  /// No description provided for @settings_theme_mode_dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settings_theme_mode_dark;

  /// No description provided for @settings_encryption_key_absent_error_title.
  ///
  /// In en, this message translates to:
  /// **'Encryption key is empty'**
  String get settings_encryption_key_absent_error_title;

  /// No description provided for @settings_encryption_key_absent_error_message.
  ///
  /// In en, this message translates to:
  /// **'Data encryption in your account is enabled, but the encryption key is empty. Please, enter the encryption key manually.'**
  String get settings_encryption_key_absent_error_message;

  /// No description provided for @settings_encryption_key_invalid_error_title.
  ///
  /// In en, this message translates to:
  /// **'Invalid Encryption key'**
  String get settings_encryption_key_invalid_error_title;

  /// No description provided for @settings_encryption_key_invalid_error_message.
  ///
  /// In en, this message translates to:
  /// **'The encryption key is invalid. Please check whether it\'s correctly entered.'**
  String get settings_encryption_key_invalid_error_message;

  /// No description provided for @settings_token_expired_error_title.
  ///
  /// In en, this message translates to:
  /// **'Token expired'**
  String get settings_token_expired_error_title;

  /// No description provided for @settings_token_expired_error_message.
  ///
  /// In en, this message translates to:
  /// **'Sync to the cloud is stopped. Please sign in again and resume the sync process.'**
  String get settings_token_expired_error_message;

  /// No description provided for @settings_passcode_time_immediately.
  ///
  /// In en, this message translates to:
  /// **'Immediately'**
  String get settings_passcode_time_immediately;

  /// No description provided for @settings_passcode_time_1minute.
  ///
  /// In en, this message translates to:
  /// **'1 minute'**
  String get settings_passcode_time_1minute;

  /// No description provided for @settings_passcode_time_3minutes.
  ///
  /// In en, this message translates to:
  /// **'3 minutes'**
  String get settings_passcode_time_3minutes;

  /// No description provided for @settings_passcode_time_5minutes.
  ///
  /// In en, this message translates to:
  /// **'5 minutes'**
  String get settings_passcode_time_5minutes;

  /// No description provided for @settings_passcode_time_10minutes.
  ///
  /// In en, this message translates to:
  /// **'10 minutes'**
  String get settings_passcode_time_10minutes;

  /// No description provided for @settings_passcode_time_30minutes.
  ///
  /// In en, this message translates to:
  /// **'30 minutes'**
  String get settings_passcode_time_30minutes;

  /// No description provided for @settings_passcode_time_1hour.
  ///
  /// In en, this message translates to:
  /// **'1 hour'**
  String get settings_passcode_time_1hour;

  /// No description provided for @no_review_items.
  ///
  /// In en, this message translates to:
  /// **'No items to review yet'**
  String get no_review_items;

  /// No description provided for @review_yearly.
  ///
  /// In en, this message translates to:
  /// **'Yearly'**
  String get review_yearly;

  /// No description provided for @review_half_year.
  ///
  /// In en, this message translates to:
  /// **'Half a year ago'**
  String get review_half_year;

  /// No description provided for @review_month.
  ///
  /// In en, this message translates to:
  /// **'A month ago'**
  String get review_month;

  /// No description provided for @review_three_months.
  ///
  /// In en, this message translates to:
  /// **'Three months ago'**
  String get review_three_months;

  /// No description provided for @review_10_days.
  ///
  /// In en, this message translates to:
  /// **'10 days ago'**
  String get review_10_days;

  /// No description provided for @review_7_days.
  ///
  /// In en, this message translates to:
  /// **'7 days ago'**
  String get review_7_days;

  /// No description provided for @review_one_year.
  ///
  /// In en, this message translates to:
  /// **'year ago'**
  String get review_one_year;

  /// No description provided for @review_two_four_years.
  ///
  /// In en, this message translates to:
  /// **'years ago'**
  String get review_two_four_years;

  /// No description provided for @review_many_years.
  ///
  /// In en, this message translates to:
  /// **'years ago'**
  String get review_many_years;

  /// No description provided for @sync_loading_data.
  ///
  /// In en, this message translates to:
  /// **'Loading data...'**
  String get sync_loading_data;

  /// No description provided for @sync_uploading_data.
  ///
  /// In en, this message translates to:
  /// **'Uploading data...'**
  String get sync_uploading_data;

  /// No description provided for @sync_uploading_new_data.
  ///
  /// In en, this message translates to:
  /// **'Uploading new data. Remaining: {count}'**
  String sync_uploading_new_data(Object count);

  /// No description provided for @sync_uploading_modified_data.
  ///
  /// In en, this message translates to:
  /// **'Uploading modified data. Remaining: {count}'**
  String sync_uploading_modified_data(Object count);

  /// No description provided for @sync_loading_tags.
  ///
  /// In en, this message translates to:
  /// **'Loading tags...'**
  String get sync_loading_tags;

  /// No description provided for @sync_loading_notebooks.
  ///
  /// In en, this message translates to:
  /// **'Loading notebooks...'**
  String get sync_loading_notebooks;

  /// No description provided for @sync_loading_notes.
  ///
  /// In en, this message translates to:
  /// **'Loading notes. Remaining: {count}'**
  String sync_loading_notes(Object count);

  /// No description provided for @review_memories_page_title.
  ///
  /// In en, this message translates to:
  /// **'Memories'**
  String get review_memories_page_title;

  /// No description provided for @settings_select_language_title.
  ///
  /// In en, this message translates to:
  /// **'Select a language'**
  String get settings_select_language_title;

  /// No description provided for @edit_tags_title.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get edit_tags_title;

  /// No description provided for @edit_tags_add_tag.
  ///
  /// In en, this message translates to:
  /// **'Add tag'**
  String get edit_tags_add_tag;

  /// No description provided for @edit_tags_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter a tag'**
  String get edit_tags_placeholder;

  /// No description provided for @tag_family.
  ///
  /// In en, this message translates to:
  /// **'Family'**
  String get tag_family;

  /// No description provided for @tag_work.
  ///
  /// In en, this message translates to:
  /// **'Work'**
  String get tag_work;

  /// No description provided for @tag_life.
  ///
  /// In en, this message translates to:
  /// **'Life'**
  String get tag_life;

  /// No description provided for @notebook_general.
  ///
  /// In en, this message translates to:
  /// **'📘 General'**
  String get notebook_general;

  /// No description provided for @side_menu_settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get side_menu_settings;

  /// No description provided for @side_menu_review_memories.
  ///
  /// In en, this message translates to:
  /// **'Review memories'**
  String get side_menu_review_memories;

  /// No description provided for @side_menu_new_notebook.
  ///
  /// In en, this message translates to:
  /// **'New notebook'**
  String get side_menu_new_notebook;

  /// No description provided for @side_menu_notebooks.
  ///
  /// In en, this message translates to:
  /// **'Notebooks'**
  String get side_menu_notebooks;

  /// No description provided for @remove_note_message.
  ///
  /// In en, this message translates to:
  /// **'Confirm deletion'**
  String get remove_note_message;

  /// No description provided for @remove_question_list_message.
  ///
  /// In en, this message translates to:
  /// **'Confirm deletion'**
  String get remove_question_list_message;

  /// No description provided for @select_tags_title.
  ///
  /// In en, this message translates to:
  /// **'Select tags'**
  String get select_tags_title;

  /// No description provided for @new_tag.
  ///
  /// In en, this message translates to:
  /// **'New tag'**
  String get new_tag;

  /// No description provided for @no_notes.
  ///
  /// In en, this message translates to:
  /// **'No memories yet'**
  String get no_notes;

  /// No description provided for @no_notebook_notes.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have notebooks. Please start with creating one.'**
  String get no_notebook_notes;

  /// No description provided for @note_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Delete note'**
  String get note_delete_title;

  /// No description provided for @note_delete_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the item?'**
  String get note_delete_message;

  /// No description provided for @note_discard_changes_title.
  ///
  /// In en, this message translates to:
  /// **'Unsaved changes'**
  String get note_discard_changes_title;

  /// No description provided for @note_discard_changes_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to discard changes?'**
  String get note_discard_changes_message;

  /// No description provided for @note_use_photo_datetime.
  ///
  /// In en, this message translates to:
  /// **'Use photo date and time?'**
  String get note_use_photo_datetime;

  /// No description provided for @notebook_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Delete notebook'**
  String get notebook_delete_title;

  /// No description provided for @notebook_delete_message.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the item?'**
  String get notebook_delete_message;

  /// No description provided for @show_more.
  ///
  /// In en, this message translates to:
  /// **'Показати більше...'**
  String get show_more;

  /// No description provided for @edit_notebook_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete notebook'**
  String get edit_notebook_delete;

  /// No description provided for @edit_notebook_new_title.
  ///
  /// In en, this message translates to:
  /// **'New notebook'**
  String get edit_notebook_new_title;

  /// No description provided for @edit_notebook_edit_title.
  ///
  /// In en, this message translates to:
  /// **'Edit notebook'**
  String get edit_notebook_edit_title;

  /// No description provided for @edit_notebook_title_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter title'**
  String get edit_notebook_title_placeholder;

  /// No description provided for @edit_tag_new_title.
  ///
  /// In en, this message translates to:
  /// **'New tag'**
  String get edit_tag_new_title;

  /// No description provided for @edit_tag_edit_title.
  ///
  /// In en, this message translates to:
  /// **'Edit tag'**
  String get edit_tag_edit_title;

  /// No description provided for @edit_tag_title_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter title'**
  String get edit_tag_title_placeholder;

  /// No description provided for @edit_notebook_sortby_option.
  ///
  /// In en, this message translates to:
  /// **'Sort notes by'**
  String get edit_notebook_sortby_option;

  /// No description provided for @edit_notebook_sortby_title.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get edit_notebook_sortby_title;

  /// No description provided for @edit_notebook_sortby_created_date.
  ///
  /// In en, this message translates to:
  /// **'Entry Date'**
  String get edit_notebook_sortby_created_date;

  /// No description provided for @edit_notebook_sortby_modified_date.
  ///
  /// In en, this message translates to:
  /// **'Edit Date'**
  String get edit_notebook_sortby_modified_date;

  /// No description provided for @all_notes.
  ///
  /// In en, this message translates to:
  /// **'All notes'**
  String get all_notes;

  /// No description provided for @note_options_title.
  ///
  /// In en, this message translates to:
  /// **'Options'**
  String get note_options_title;

  /// No description provided for @note_select_notebook_title.
  ///
  /// In en, this message translates to:
  /// **'Select a notebook'**
  String get note_select_notebook_title;

  /// No description provided for @note_options_date_label.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get note_options_date_label;

  /// No description provided for @note_options_tags_label.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get note_options_tags_label;

  /// No description provided for @note_options_no_tags_label.
  ///
  /// In en, this message translates to:
  /// **'No tags'**
  String get note_options_no_tags_label;

  /// No description provided for @note_options_notebook_label.
  ///
  /// In en, this message translates to:
  /// **'Notebook'**
  String get note_options_notebook_label;

  /// No description provided for @note_options_location_label.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get note_options_location_label;

  /// No description provided for @note_options_no_location_text.
  ///
  /// In en, this message translates to:
  /// **'No location'**
  String get note_options_no_location_text;

  /// No description provided for @sort_notebooks_title.
  ///
  /// In en, this message translates to:
  /// **'Sort notebooks'**
  String get sort_notebooks_title;

  /// No description provided for @sort_notebooks_no_items.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have notebooks'**
  String get sort_notebooks_no_items;

  /// No description provided for @show_in_review_notebooks_title.
  ///
  /// In en, this message translates to:
  /// **'Select notebooks'**
  String get show_in_review_notebooks_title;

  /// No description provided for @show_in_review_notebooks_no_items.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have notebooks'**
  String get show_in_review_notebooks_no_items;

  /// No description provided for @select_review_period_title.
  ///
  /// In en, this message translates to:
  /// **'Select periods'**
  String get select_review_period_title;

  /// No description provided for @question_lists_page_title.
  ///
  /// In en, this message translates to:
  /// **'Questions'**
  String get question_lists_page_title;

  /// No description provided for @menu_edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get menu_edit;

  /// No description provided for @menu_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get menu_delete;

  /// No description provided for @menu_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get menu_cancel;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading, please wait'**
  String get loading;

  /// No description provided for @open_settings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get open_settings;

  /// No description provided for @locations_blocked_title.
  ///
  /// In en, this message translates to:
  /// **'Can\'t track location'**
  String get locations_blocked_title;

  /// No description provided for @locations_blocked_message.
  ///
  /// In en, this message translates to:
  /// **'Please open Settings and allow usage of locations.'**
  String get locations_blocked_message;

  /// No description provided for @clear_cache_title.
  ///
  /// In en, this message translates to:
  /// **'Clear cache'**
  String get clear_cache_title;

  /// No description provided for @clear_cache_message.
  ///
  /// In en, this message translates to:
  /// **'The cache has been cleared.'**
  String get clear_cache_message;

  /// No description provided for @biometric_blocked_title.
  ///
  /// In en, this message translates to:
  /// **'Can\'t use biometric'**
  String get biometric_blocked_title;

  /// No description provided for @biometric_blocked_message.
  ///
  /// In en, this message translates to:
  /// **'Please open Settings and allow usage of biometric.'**
  String get biometric_blocked_message;

  /// No description provided for @enter_pin_title.
  ///
  /// In en, this message translates to:
  /// **'Enter passcode'**
  String get enter_pin_title;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {appName}'**
  String welcome(Object appName);

  /// No description provided for @email_field_label.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email_field_label;

  /// No description provided for @email_field_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your e-mail'**
  String get email_field_placeholder;

  /// No description provided for @password_field_label.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password_field_label;

  /// No description provided for @password_field_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get password_field_placeholder;

  /// No description provided for @code_field_label.
  ///
  /// In en, this message translates to:
  /// **'Code'**
  String get code_field_label;

  /// No description provided for @code_field_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter the code'**
  String get code_field_placeholder;

  /// No description provided for @first_name_field_label.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get first_name_field_label;

  /// No description provided for @first_name_field_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your first name'**
  String get first_name_field_placeholder;

  /// No description provided for @last_name_field_label.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get last_name_field_label;

  /// No description provided for @last_name_field_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Enter your last name'**
  String get last_name_field_placeholder;

  /// No description provided for @terms_of_use.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get terms_of_use;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @login_page_title.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login_page_title;

  /// No description provided for @login_page_login_button.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login_page_login_button;

  /// No description provided for @login_page_forgot_password_button.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password?'**
  String get login_page_forgot_password_button;

  /// No description provided for @login_page_create_account_button.
  ///
  /// In en, this message translates to:
  /// **'Create an account'**
  String get login_page_create_account_button;

  /// No description provided for @login_page_and_separator.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get login_page_and_separator;

  /// No description provided for @signup_page_title.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup_page_title;

  /// No description provided for @signup_page_signup_button.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup_page_signup_button;

  /// No description provided for @signup_page_and_separator.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get signup_page_and_separator;

  /// No description provided for @forgot_password_page_title.
  ///
  /// In en, this message translates to:
  /// **'Restore password'**
  String get forgot_password_page_title;

  /// No description provided for @forgot_password_page_instruction.
  ///
  /// In en, this message translates to:
  /// **'Enter your user account\'s verified email address and we will send you a code.'**
  String get forgot_password_page_instruction;

  /// No description provided for @forgot_password_page_button.
  ///
  /// In en, this message translates to:
  /// **'Restore password'**
  String get forgot_password_page_button;

  /// No description provided for @restore_password_page_title.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get restore_password_page_title;

  /// No description provided for @restore_password_page_instruction.
  ///
  /// In en, this message translates to:
  /// **'Enter the code that we have sent to your e-mail and a new password.'**
  String get restore_password_page_instruction;

  /// No description provided for @restore_password_page_button.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get restore_password_page_button;

  /// No description provided for @loading_message.
  ///
  /// In en, this message translates to:
  /// **'loading...'**
  String get loading_message;

  /// No description provided for @required_field_validator.
  ///
  /// In en, this message translates to:
  /// **'Required field'**
  String get required_field_validator;

  /// No description provided for @invalid_email_password.
  ///
  /// In en, this message translates to:
  /// **'Invalid e-mail or password'**
  String get invalid_email_password;

  /// No description provided for @email_is_in_use_error.
  ///
  /// In en, this message translates to:
  /// **'E-mail is already in use'**
  String get email_is_in_use_error;

  /// No description provided for @short_password_validator.
  ///
  /// In en, this message translates to:
  /// **'Password should be at least 7 symbols'**
  String get short_password_validator;

  /// No description provided for @invalid_email_validator.
  ///
  /// In en, this message translates to:
  /// **'Invalid e-mail format'**
  String get invalid_email_validator;

  /// No description provided for @create_account_error.
  ///
  /// In en, this message translates to:
  /// **'Can\'t create an account. Try again.'**
  String get create_account_error;

  /// No description provided for @restore_password_error.
  ///
  /// In en, this message translates to:
  /// **'Can\'t restore password. Try again.'**
  String get restore_password_error;

  /// No description provided for @user_is_not_found.
  ///
  /// In en, this message translates to:
  /// **'The user with such an e-mail is not found'**
  String get user_is_not_found;

  /// No description provided for @somethingWrong.
  ///
  /// In en, this message translates to:
  /// **'Oops, something went wrong. Please try again.'**
  String get somethingWrong;

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get gotIt;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @photo_library_no_access.
  ///
  /// In en, this message translates to:
  /// **'Please open Settings and allow usage of Photo library'**
  String get photo_library_no_access;

  /// No description provided for @jailbrakeTitle.
  ///
  /// In en, this message translates to:
  /// **'Rooted device'**
  String get jailbrakeTitle;

  /// No description provided for @jailbrakeMessage.
  ///
  /// In en, this message translates to:
  /// **'This application cannot be used on a rooted device.'**
  String get jailbrakeMessage;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @play_store.
  ///
  /// In en, this message translates to:
  /// **'Play Store'**
  String get play_store;

  /// No description provided for @apple_store.
  ///
  /// In en, this message translates to:
  /// **'Apple Store'**
  String get apple_store;

  /// No description provided for @maintenance_mode_title.
  ///
  /// In en, this message translates to:
  /// **'Application under Maintenance'**
  String get maintenance_mode_title;

  /// No description provided for @maintenance_mode_description.
  ///
  /// In en, this message translates to:
  /// **'We are performing scheduled maintenance. We will be back on-line shortly!'**
  String get maintenance_mode_description;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @create_pin_title.
  ///
  /// In en, this message translates to:
  /// **'Enter new passcode'**
  String get create_pin_title;

  /// No description provided for @confirm_pin_title.
  ///
  /// In en, this message translates to:
  /// **'Re-enter new passcode'**
  String get confirm_pin_title;

  /// No description provided for @biometric_auth_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to the app without a PIN code'**
  String get biometric_auth_subtitle;

  /// No description provided for @allow_biometric_auth.
  ///
  /// In en, this message translates to:
  /// **'Allow Biometric'**
  String get allow_biometric_auth;

  /// No description provided for @biometrics_auth_reason.
  ///
  /// In en, this message translates to:
  /// **'Unlock using Biometric'**
  String get biometrics_auth_reason;

  /// No description provided for @no_internet.
  ///
  /// In en, this message translates to:
  /// **'There is no Internet connection'**
  String get no_internet;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get get_started;

  /// No description provided for @tutorial2_title.
  ///
  /// In en, this message translates to:
  /// **'Write your story'**
  String get tutorial2_title;

  /// No description provided for @tutorial3_title.
  ///
  /// In en, this message translates to:
  /// **'Review memories'**
  String get tutorial3_title;

  /// No description provided for @tutorial4_title.
  ///
  /// In en, this message translates to:
  /// **'Write from any device'**
  String get tutorial4_title;

  /// No description provided for @tutorial5_title.
  ///
  /// In en, this message translates to:
  /// **'Protect your data'**
  String get tutorial5_title;

  /// No description provided for @tutorial1_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Your personal notebook that is always with you'**
  String get tutorial1_subtitle;

  /// No description provided for @tutorial2_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Preserve important events from your life'**
  String get tutorial2_subtitle;

  /// No description provided for @tutorial3_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Remember everything that happened in your life.'**
  String get tutorial3_subtitle;

  /// No description provided for @tutorial4_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Download for free on iPhone, iPad, Android, Mac and Windows'**
  String get tutorial4_subtitle;

  /// No description provided for @tutorial5_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Configure a passcode and biometric protection to keep your data safe'**
  String get tutorial5_subtitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'uk'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
