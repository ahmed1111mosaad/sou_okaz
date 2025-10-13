import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SizeText extends StatelessWidget {
  const SizeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          S.current.filtersSize,
          style: AppTextStyles.medium18.copyWith(
              color: Colors.black,
              fontSize: responsiveFontSize(context, 0.0, 0.048)),
        ),
      ),
    );
  }
}
