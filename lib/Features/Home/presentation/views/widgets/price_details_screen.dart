import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class PriceDetailsScreen extends StatelessWidget {
  const PriceDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        r"$" "493.00",
        style: AppTextStyles.medium20.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
