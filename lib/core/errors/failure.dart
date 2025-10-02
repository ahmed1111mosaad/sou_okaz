import 'package:firebase_auth/firebase_auth.dart';

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
      return FirebaseAuthFailure('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      return FirebaseAuthFailure('The account already exists for that email.');
    } else {
      return FirebaseAuthFailure('Failed to create user: ${e.message}');
    }
  }
}
