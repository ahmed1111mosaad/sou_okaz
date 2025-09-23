import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/onboarding_view.dart';
import 'package:sou_okaz/Features/splash/presentation/views/widgets/sou_okaz_animation.dart';
import 'package:sou_okaz/core/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/functions/navigator_with_slide_animation.dart';

import 'package:sou_okaz/core/utils/routes.dart';

class CustomSplashScreenBody extends StatefulWidget {
  const CustomSplashScreenBody({super.key});

  @override
  State<CustomSplashScreenBody> createState() => _CustomSplashScreenBodyState();
}

class _CustomSplashScreenBodyState extends State<CustomSplashScreenBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 5500), () {
      navigatorWithFadeAnimationPushReplacement(context, OnboardingView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SouOkazAnimation();
  }
}
