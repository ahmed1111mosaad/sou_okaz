import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.title, this.onPressed});
  final String title;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(title, style: AppTextStyles.medium18),
      ),
    );
  }
}
