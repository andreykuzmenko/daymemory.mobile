import 'dart:convert';
import 'dart:math';
import 'package:daymemory/services/auth_service/auth_result.dart';
import 'package:daymemory/services/auth_service/auth_user_data.dart';
import 'package:daymemory/services/logging/logging_service.dart';
import 'package:daymemory/services/network/errors/signin_cancelled_exception.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
// ignore: depend_on_referenced_packages
import 'package:crypto/crypto.dart';

abstract class IAuthService {
  Future<AuthResult> signInWitFacebook();

  Future<String?> signInWithGoogle();

  Future<String?> signInWithApple();
}

class AuthService implements IAuthService {
  final ILoggingService loggingService;

  AuthService({required this.loggingService});

  @override
  Future<AuthResult> signInWitFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login(
      permissions: ['public_profile', 'email'],
    );
    if (result.status != LoginStatus.success) {
      return AuthResult(isSuccessfull: false, provider: "Facebook");
    }

    final userData = await FacebookAuth.i.getUserData(
      fields: "first_name,last_name,email,picture.width(200)",
    );

    var firstName = userData["first_name"];
    var lastName = userData["last_name"];
    var id = userData["id"];
    var email = userData["email"];
    var imageUrl = "";

    try {
      var picture = userData["picture"] as Map;
      imageUrl = picture["data"]["url"];
    } on Exception catch (e) {
      loggingService.logError(e);
    }

    return AuthResult(
        isSuccessfull: true,
        provider: "Facebook",
        userData: AuthUserData(
          id: id,
          email: email,
          firstName: firstName,
          lastName: lastName,
          imageUrl: imageUrl,
        ));
  }

  @override
  Future<String?> signInWithGoogle() async {
    try {
      GoogleSignIn.instance.initialize(
        //clientId:
        //  "533652169284-m7959aojvek4dj92ulchunopjoopvs34.apps.googleusercontent.com",
        serverClientId: "533652169284-0h9vctbr5m6gh1v21qoq7agdrr2a0pdd.apps.googleusercontent.com",
      );

      final GoogleSignInAccount googleUser = await GoogleSignIn.instance.authenticate(
        scopeHint: [
          'email',
          'profile',
          'openid',
        ],
      );

      return googleUser.authentication.idToken;
    } on GoogleSignInException catch (e) {
      if (e.code == GoogleSignInExceptionCode.canceled) {
        throw SigninCancelledException();
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<String?> signInWithApple() async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      return appleCredential.identityToken;
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        throw SigninCancelledException();
      } else {
        rethrow;
      }
    }
  }

  String generateNonce([int length = 32]) {
    const charset = '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)]).join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
