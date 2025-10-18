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
      // ToDo add data to the  database and store it in the shared preferences
      await addUserData(userEntity: userEntity);
      await saveUserData(userEntity: userEntity);
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
    String data = jsonEncode(UserModel.fromEntity(userEntity).toJson());
    await SharedPreferencesSingleton.setString(Keys.kSaveUserData, data);
  }

  static UserEntity getUserDataLocallyFromSharedPreferences({
    required String key,
  }) {
    var data = SharedPreferencesSingleton.getString(key);
    return UserModel.fromJson(json: jsonDecode(data));
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      // ToDo (get data from database --> save data to shared preferences)
      // so I got the data from database and then saved it to shared preferences
      UserEntity userEntity = await getUserData(uId: user.uid);
      await saveUserData(userEntity: userEntity);
      return right(userEntity);
    } on FirebaseAuthException catch (e) {
      return left(FirebaseAuthFailure.fromFirebaseFailure(e));
    } catch (e) {
      return left(FirebaseAuthFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithGoogle();
      UserEntity userEntity = UserModel.fromFirebase(user);
      await addUserData(userEntity: userEntity);
      bool isUserExist = await firestoreService.checkIfDataExists(
          path: CollectionNames.users, docuId: user.uid);
      if (isUserExist) {
        saveUserData(userEntity: await getUserData(uId: user.uid));
      } else {
        await addUserData(userEntity: userEntity);
      }
      return right(userEntity);
    } on Exception catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(GoogleSignInFailure.fromException(e));
    } catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(GoogleSignInFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    User? user;
    try {
      user = await firebaseAuthService.signInWithFacebook();
      UserEntity userEntity = UserModel.fromFirebase(user);
      await addUserData(userEntity: userEntity);
      bool isUserExist = await firestoreService.checkIfDataExists(
          path: CollectionNames.users, docuId: user.uid);
      if (isUserExist) {
        saveUserData(userEntity: await getUserData(uId: user.uid));
      } else {
        await addUserData(userEntity: userEntity);
      }
      return right(userEntity);
    } on FirebaseAuthException catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(FacebookAuthFailure.fromFirebaseAuthFailure(e));
    } on Exception catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(FacebookAuthFailure.fromException(e));
    } catch (e) {
      if (user != null) {
        FirebaseAuth.instance.currentUser!.delete();
      }
      return left(FacebookAuthFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> resetPassword({required String email}) async {
    try {
      await firebaseAuthService.resetpassword(email: email);
      return right(null);
    } on FirebaseAuthException catch (e) {
      return left(ResetPasswordFailure.fromFirebaseFailure(e));
    } catch (e) {
      return left(ResetPasswordFailure(e.toString()));
    }
  }
}
