import 'package:get_it/get_it.dart';
import 'package:sou_okaz/Features/Auth/data/repo/auth_repo_impl.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/core/Firebase/firebase_auth_service.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerLazySingleton<FirebaseAuthService>(() => FirebaseAuthService());
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
