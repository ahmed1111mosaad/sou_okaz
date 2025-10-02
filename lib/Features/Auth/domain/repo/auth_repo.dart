import 'package:dartz/dartz.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';
import 'package:sou_okaz/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });
}
