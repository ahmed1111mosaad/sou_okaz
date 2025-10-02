import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sou_okaz/Features/Auth/data/models/user_model.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/core/Firebase/firebase_auth_service.dart';
import 'package:sou_okaz/core/errors/failure.dart';

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({required this.firebaseAuthService}) : super();
  final FirebaseAuthService firebaseAuthService;
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      User user = await firebaseAuthService.createUserWithEmailAndPassworrd(
        email: email,
        password: password,
      );
      return right(UserModel.fromFirebase(user));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
