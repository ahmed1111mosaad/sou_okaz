import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signin_view.dart';
import 'package:sou_okaz/Features/Home/presentation/views/main_screen.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:sou_okaz/Features/splash/presentation/views/widgets/sou_okaz_animation.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/services/shared_preferences_singleton.dart';
import 'package:sou_okaz/core/utils/constants.dart';

class CustomSplashScreenBody extends StatefulWidget {
  const CustomSplashScreenBody({super.key});

  @override
  State<CustomSplashScreenBody> createState() => _CustomSplashScreenBodyState();
}

class _CustomSplashScreenBodyState extends State<CustomSplashScreenBody> {
  @override
  void initState() {
    super.initState();
    bool isOnboardingViewSeen =
        SharedPreferencesSingleton.getBool(Keys.kIsOnboardingview) ?? false;
    Future.delayed(Duration(milliseconds: 5500), () {
      if (FirebaseAuth.instance.currentUser == null) {
        if (isOnboardingViewSeen) {
          navigatorWithFadeAnimationPushReplacement(context, SigninView());
        } else {
          navigatorWithFadeAnimationPushReplacement(context, OnboardingView());
        }
      } else {
        navigatorWithFadeAnimationPushReplacement(context, MainScreen());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SouOkazAnimation();
  }
}
