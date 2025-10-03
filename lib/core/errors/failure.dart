import 'package:firebase_auth/firebase_auth.dart';
import 'package:sou_okaz/generated/l10n.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

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
    } else {
      return FirebaseAuthFailure('Failed to create user: ${e.message}');
    }
  }
}
