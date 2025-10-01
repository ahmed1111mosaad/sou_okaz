import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ResendCode extends StatelessWidget {
  const ResendCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).forgotPasswordResendCode,
      style: AppTextStyles.bold16.copyWith(
        color: Colors.cyan,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
