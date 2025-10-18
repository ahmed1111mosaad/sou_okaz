import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.homeBestSeller,
        style: AppTextStyles.regular14.copyWith(
            color: AppColors.primaryColor,
            overflow: TextOverflow.ellipsis,
            fontSize: responsiveFontSize(context, 0.02, 0.00)),
      ),
    );
  }
}
