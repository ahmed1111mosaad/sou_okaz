import 'package:dartz/dartz.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';
import 'package:sou_okaz/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String phoneNumber,
  });
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntity>> signInWithGoogle();
  Future addUserData({required UserEntity userEntity});
  Future<UserEntity> getUserData({required String uId});
  Future saveUserData({required UserEntity userEntity});
}
