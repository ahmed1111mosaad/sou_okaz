import 'package:get_it/get_it.dart';
import 'package:sou_okaz/Features/Auth/data/repo/auth_repo_impl.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/core/Firebase/auth/firebase_auth_service.dart';
import 'package:sou_okaz/core/Firebase/firestore/firestore_service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  getIt.registerLazySingleton<FirestoreService>(() => FirestoreService());
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      firestoreService: getIt<FirestoreService>(),
    ),
  );
}
