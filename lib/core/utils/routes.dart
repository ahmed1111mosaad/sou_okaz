import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:sou_okaz/Features/splash/presentation/views/splash_screen.dart';

abstract class Routes {
  static const splash = 'SplashScreen';
  static const onboarding = 'OnboardingView';
}

Map<String, Widget Function(BuildContext)> routes() {
  return {
    Routes.splash: (context) => SplashScreen(),
    Routes.onboarding: (context) => OnboardingView(),
  };
}
