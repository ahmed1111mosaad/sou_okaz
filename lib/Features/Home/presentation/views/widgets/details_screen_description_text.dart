import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class DetailsScreenDescriptionText extends StatelessWidget {
  const DetailsScreenDescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.current.detailsDescription,
      maxLines: 3,
      style: AppTextStyles.regular14.copyWith(
        overflow: TextOverflow.ellipsis,
        fontSize: responsiveFontSize(context, 0.017, 0.0),
      ),
    );
  }
}
