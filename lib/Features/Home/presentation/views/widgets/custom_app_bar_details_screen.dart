import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class CustomAppBarDetailsScreen extends StatelessWidget {
  const CustomAppBarDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomArrowBackAppBar(),
        Spacer(),
        Text(S.current.detailsCategory,
            style: AppTextStyles.medium16.copyWith(
                fontSize: responsiveFontSize(context, 0.0, .053))),
        Spacer(),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: Image.asset(
            Assets.assetsImagesCheckoutNavigationBar,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
