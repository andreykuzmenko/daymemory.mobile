import 'package:local_auth/local_auth.dart';

abstract class ILocalAuthService {
  Future<bool> get canAuthenticateWithBiometrics;

  Future<bool> get isDeviceSupported;

  Future<bool> authenticate(String reason);
}

class LocalAuthService implements ILocalAuthService {
  final LocalAuthentication _localAuth = LocalAuthentication();

  @override
  Future<bool> get canAuthenticateWithBiometrics async {
    final isSupported = await _localAuth.isDeviceSupported();
    if (!isSupported) return false;
    
    final canCheck = await _localAuth.canCheckBiometrics;
    if (!canCheck) return false;
    
    final availableBiometrics = await _localAuth.getAvailableBiometrics();
    return availableBiometrics.isNotEmpty;
  }

  @override
  Future<bool> get isDeviceSupported async => await _localAuth.isDeviceSupported();

  @override
  Future<bool> authenticate(String reason) async {
    try {
      return await _localAuth.authenticate(
        localizedReason: reason,
        biometricOnly: true,
        sensitiveTransaction: true,
        persistAcrossBackgrounding: true,
      );
    } catch (e) {
      return false;
    }
  }
}
