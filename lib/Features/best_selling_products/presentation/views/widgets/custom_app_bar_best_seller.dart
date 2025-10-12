import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class CustomAppBarBestSeller extends StatelessWidget {
  const CustomAppBarBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomArrowBackAppBar(),
        Spacer(),
        Text(S.current.bestSellerTitle,
            style: AppTextStyles.medium16.copyWith(
                fontSize: responsiveFontSize(context, 0.0, .053))),
        Spacer(),
        Image.asset(Assets.assetsImagesFilterBestSeller),
        SizedBox(width: 5),
        Image.asset(Assets.assetsImagesSearchBestSeller),
      ],
    );
  }
}
