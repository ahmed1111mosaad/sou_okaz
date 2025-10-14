import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class TitleItemCart extends StatelessWidget {
  const TitleItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: const EdgeInsets.only(top: 5.0),
        child: Text(
          S.current.homeNikeAirMax,
          style: AppTextStyles.medium18.copyWith(
              color: Colors.black,
              fontSize: responsiveFontSize(context, 0.0, 0.045)),
        ),
      ),
    );
  }
}
