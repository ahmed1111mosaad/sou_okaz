import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/best_selling_products/presentation/views/best_selling_view.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class TextPopularShoes extends StatelessWidget {
  const TextPopularShoes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorWithSlideAnimation(context, BestSellingView(), Offset(1, 0));
      },
      child: Row(
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
      ),
    );
  }
}
