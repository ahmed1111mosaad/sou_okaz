import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class TextPopularShoes extends StatelessWidget {
  const TextPopularShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.current.homePopularShoes,
          style: AppTextStyles.medium16,
        ),
        Spacer(),
        Text(
          'see all',
          style: AppTextStyles.regular14.copyWith(
              color: AppColors.lightPrimaryColor,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
