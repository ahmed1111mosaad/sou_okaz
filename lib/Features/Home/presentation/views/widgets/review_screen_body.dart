import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ReviewScreenBody extends StatelessWidget {
  const ReviewScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: responsivePaddingWithWidth(context, 0.04),
        vertical: responsivePaddingWithHeight(context, 0.02),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomArrowBackAppBar(),
              Spacer(),
              Text(S.current.Review,
                  style: AppTextStyles.medium16.copyWith(
                      fontSize: responsiveFontSize(context, 0.0, .053))),
              Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.06,
              )
            ],
          ),
        ],
      ),
    ));
  }
}
