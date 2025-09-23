import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/nike.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/onboarding_image_shoes.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/small_left_point.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/small_right_point.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/wide_point.dart';
import 'package:sou_okaz/core/app_colors.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(right: 0.0, child: Image.asset(Assets.assetsImagesEllipse)),
        WidePoint(),
        Nike(),
        OnboardingImageShoes(),
        SmallLeftPoint(),
        SmallRightPoint(),
        // SizedBox(
        //   height: 20,
        // )
      ],
    );
  }
}
