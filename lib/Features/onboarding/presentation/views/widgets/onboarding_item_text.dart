import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class OnboardingItemText extends StatelessWidget {
  const OnboardingItemText({
    super.key,
    required this.title,
    required this.title1,
    required this.subTitle,
  });
  final String title;
  final String title1;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.medium40),
        Text(title1, style: AppTextStyles.medium40),
        SizedBox(height: 15),
        Text(subTitle, style: AppTextStyles.regular20),
      ],
    );
  }
}
