import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class AppBarCartScreen extends StatelessWidget {
  const AppBarCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
              left: responsivePaddingWithWidth(context, 0.04),
              right: responsivePaddingWithWidth(context, 0.04),
              top: responsivePaddingWithHeight(context, 0.02),
            ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomArrowBackAppBar(),
          Text(S.current.drawerMyCart,
              style: AppTextStyles.medium16.copyWith(
                  fontSize: responsiveFontSize(context, 0.0, .053))),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          )
        ],
      ),
    );
  }
}
