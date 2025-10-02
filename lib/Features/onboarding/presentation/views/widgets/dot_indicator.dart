import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      decorator: DotsDecorator(
        color: AppColors.verylightPrimaryColor,
        activeColor: AppColors.primaryColor,
        activeSize: Size(
          MediaQuery.of(context).size.width * .1,
          5,
        ),
        size: Size(MediaQuery.of(context).size.width * .023, 8),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    );
  }
}
