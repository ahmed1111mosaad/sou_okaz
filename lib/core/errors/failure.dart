import 'package:firebase_auth/firebase_auth.dart';
import 'package:sou_okaz/generated/l10n.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

// ! sign in and sign up
class FirebaseAuthFailure extends Failure {
  FirebaseAuthFailure(super.message);
  factory FirebaseAuthFailure.fromFirebaseFailure(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      return FirebaseAuthFailure(S.current.weakPassword);
    } else if (e.code == 'email-already-in-use') {
      return FirebaseAuthFailure(S.current.emailAlreadyInUse);
    } else if (e.code == 'user-not-found') {
      return FirebaseAuthFailure(S.current.userNotFound);
    } else if (e.code == 'wrong-password') {
      return FirebaseAuthFailure(S.current.wrongPassword);
    } else if (e.code == 'invalid-credential') {
      return FirebaseAuthFailure(S.current.invalidEmailOrPassword);
    } else {
      return FirebaseAuthFailure('Failed to create user: ${e.message}');
    }
  }
}

// ! sign in with google
class GoogleSignInFailure extends Failure {
  GoogleSignInFailure(super.message);

  factory GoogleSignInFailure.fromException(Exception e) {
    if (e.toString().contains('Sign in aborted')) {
      return GoogleSignInFailure(S.current.FailureSignInWithGoogle);
    } else {
      return GoogleSignInFailure(S.current.FailureSignInWithGoogleErrorOccured);
    }
  }
}

// ! sign in with facebook
class FacebookAuthFailure extends Failure {
  FacebookAuthFailure(super.message);

  factory FacebookAuthFailure.fromFirebaseAuthFailure(
    FirebaseAuthException e,
  ) {
    if (e.code == 'account-exists-with-different-credential') {
      return FacebookAuthFailure(
          S.current.accountExistsWithDifferentCredential);
    } else if (e.code == 'operation-not-allowed') {
      return FacebookAuthFailure(S.current.signInMethodNotEnabled);
    } else if (e.code == 'invalid-credential') {
      return FacebookAuthFailure(S.current.invalidEmailOrPassword);
    } else if (e.code == 'invalid-verification-code' ||
        e.code == 'invalid-verification-id') {
      return FacebookAuthFailure(S.current.invalidVerificationCode);
    } else if (e.code == 'user-disabled') {
      return FacebookAuthFailure(S.current.userDisabled);
    } else {
      return FacebookAuthFailure(
          '${S.current.failedToCreateUser}: ${e.message}');
    }
  }

  factory FacebookAuthFailure.fromException(Exception e) {
    if (e.toString().contains('Sign-in canceled')) {
      return FacebookAuthFailure(S.current.signInCanceled);
    } else {
      return FacebookAuthFailure(
        'failed to create user ${e.toString()}',
      );
    }
  }
}

// ! reset password 
class ResetPasswordFailure extends Failure {
  ResetPasswordFailure(super.message);

  factory ResetPasswordFailure.fromFirebaseFailure(FirebaseAuthException e) {
    if (e.code == 'user-not-found') {
      return ResetPasswordFailure(S.current.userNotFound);
    } else if (e.code == 'invalid-email') {
      return ResetPasswordFailure(S.current.invalidEmail);
    } else if (e.code == 'missing-android-pkg-name' ||
        e.code == 'missing-continue-uri' ||
        e.code == 'missing-ios-bundle-id') {
      return ResetPasswordFailure(S.current.invalidResetLinkConfig);
    } else if (e.code == 'invalid-continue-uri') {
      return ResetPasswordFailure(S.current.invalidResetLink);
    } else if (e.code == 'unauthorized-continue-uri') {
      return ResetPasswordFailure(S.current.unauthorizedResetLink);
    } else {
      return ResetPasswordFailure(
          'Failed to send reset email: ${e.message}');
    }
  }
}
