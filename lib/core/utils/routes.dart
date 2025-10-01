import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/enter_verification_code.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/recovery_password.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signin_view.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signup_view.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:sou_okaz/Features/splash/presentation/views/splash_screen.dart';

abstract class Routes {
  static const splash = 'SplashScreen';
  static const onboarding = 'OnboardingView';
  static const login = 'LoginView';
  static const signUp = 'signUp';
  static const recoveryPassowrd = 'RecoveryPassowrd';
  static const enterVerificationCode = 'EnterVerificationCode';
}

Map<String, Widget Function(BuildContext)> routes() {
  return {
    Routes.splash: (context) => SplashScreen(),
    Routes.onboarding: (context) => OnboardingView(),
    Routes.login: (context) => SigninView(),
    Routes.recoveryPassowrd: (context) => RecoveryPassword(),
    // Routes.enterVerificationCode: (context) => enterVerificationCode(),
  };
}
