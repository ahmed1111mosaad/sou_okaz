import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sou_okaz/Features/Auth/data/models/user_model.dart';
import 'package:sou_okaz/Features/Auth/domain/entities/user_entity.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/core/Firebase/auth/firebase_auth_service.dart';
import 'package:sou_okaz/core/Firebase/firestore/firestore_service.dart';
import 'package:sou_okaz/core/errors/failure.dart';
import 'package:sou_okaz/core/services/shared_preferences_singleton.dart';
import 'package:sou_okaz/core/utils/collection_names.dart';
import 'package:sou_okaz/core/utils/keys.dart';

class AuthRepoImpl extends AuthRepo {
  AuthRepoImpl({
    required this.firebaseAuthService,
    required this.firestoreService,
  }) : super();
  final FirebaseAuthService firebaseAuthService;
  final FirestoreService firestoreService;
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword({
    required String email,
    required String password,
    required String name,
    required String phoneNumber,
  }) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassworrd(
        email: email,
        password: password,
      );
      UserEntity userEntity = UserEntity(
        name: name,
        email: email,
        uId: user.uid,
        phoneNumber: phoneNumber,
      );
      await addUserData(userEntity: userEntity);
      return right(userEntity);
    } on FirebaseAuthException catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(FirebaseAuthFailure.fromFirebaseFailure(e));
    } catch (e) {
      return left(FirebaseAuthFailure('error: $e'));
    }
  }

  @override
  Future addUserData({required UserEntity userEntity}) async {
    await firestoreService.addData(
      path: CollectionNames.users,
      data: UserModel.fromEntity(userEntity).toJson(),
      docuid: userEntity.uId,
    );
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await firestoreService.getData(
      path: CollectionNames.users,
      docuid: uId,
    );
    return UserModel.fromJson(json: data);
  }

  @override
  Future saveUserData({required UserEntity userEntity}) async {
    var data = jsonEncode(UserModel.fromEntity(userEntity).toJson());
    await SharedPreferencesSingleton.setString(Keys.kSaveData, data);
  }
}
