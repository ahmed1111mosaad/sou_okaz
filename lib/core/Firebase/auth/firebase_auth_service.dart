import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassworrd({
    required String email,
    required String password,
  }) async {
    final credential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    return credential.user!;
  }

  Future<User> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user!;
  }

  Future<User> signInWithGoogle() async {
    // 1- إنشاء instance
    final signIn = GoogleSignIn.instance;

    // 2- تهيئة GoogleSignIn (مهم في v7.1.1)
    await signIn.initialize(
      serverClientId:
          // من Google Cloud Console
          "926725447107-d9ecjp4v4v65e7g7d9ve4vlrsg48g6lg.apps.googleusercontent.com",
    );

    // 3- بدء تسجيل الدخول
    final googleUser = await signIn.authenticate();

    // 4- الحصول على بيانات التوكن
    final googleAuth = googleUser.authentication;

    // 5- إنشاء Credential من Firebase
    final credential = GoogleAuthProvider.credential(
      idToken: googleAuth.idToken,
      accessToken: googleAuth.idToken,
    );

    // 6- تسجيل الدخول في Firebase
    final userCredential = await FirebaseAuth.instance.signInWithCredential(
      credential,
    );

    return userCredential.user!;
  }
}
