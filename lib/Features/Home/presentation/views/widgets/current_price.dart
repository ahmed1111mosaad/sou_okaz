import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class CurrentPrice extends StatelessWidget {
  const CurrentPrice({
    super.key,
    required this.currentPrice,
  });

  final double currentPrice;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          r'$' '${currentPrice.round().toString()}',
          style: AppTextStyles.medium18.copyWith(
              color: Colors.black,
              fontSize: responsiveFontSize(context, 0.0, 0.048)),
        ),
      ),
    );
  }
}
