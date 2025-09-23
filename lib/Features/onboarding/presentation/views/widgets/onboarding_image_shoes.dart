import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class OnboardingImageShoes extends StatelessWidget {
  const OnboardingImageShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 5.6,
      left: 25,
      right: 0.0,
      child: Image.asset(Assets.assetsImagesGreenShoes),
    );
  }
}
