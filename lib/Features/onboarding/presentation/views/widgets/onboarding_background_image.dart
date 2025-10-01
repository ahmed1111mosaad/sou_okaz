import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/nike.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/onboarding_image_shoes.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/small_left_point.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/small_right_point.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/wide_point.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class OnboardingBackgroundImage extends StatelessWidget {
  const OnboardingBackgroundImage({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .6,
      child: Stack(
        children: [
          Positioned(
            right: 0.0,
            child: Image.asset(
              Assets.assetsImagesEllipse,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          WidePoint(),
          Nike(),
          SmallLeftPoint(),
          SmallRightPoint(),
          OnboardingImageShoes(image: image),
        ],
      ),
    );
  }
}
