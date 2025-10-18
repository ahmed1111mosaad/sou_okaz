import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class TitleDetailsScreenText extends StatelessWidget {
  const TitleDetailsScreenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.homeNikeJordan,
        style: AppTextStyles.medium16
            .copyWith(fontSize: responsiveFontSize(context, 0.03, 0.0)),
      ),
    );
  }
}
