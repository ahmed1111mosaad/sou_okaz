import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class SignInWithButton extends StatelessWidget {
  const SignInWithButton({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            SizedBox(width: 8),
            Text(
              title,
              style: AppTextStyles.medium18.copyWith(color: Color(0xff1A2530)),
            ),
          ],
        ),
      ),
    );
  }
}
