import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class GalleryText extends StatelessWidget {
  const GalleryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.detailsGallery,
        style: AppTextStyles.medium20.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: responsiveFontSize(context, 0.025, 0.0),
        ),
      ),
    );
  }
}
