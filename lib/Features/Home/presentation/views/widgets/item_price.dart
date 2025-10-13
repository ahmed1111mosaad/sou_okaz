import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class ItemPrice extends StatelessWidget {
  const ItemPrice({
    super.key,
    required this.isSelected,
    required this.text,
  });
  final bool isSelected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.053,
      decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Color(0xFFE9EDEF),
          borderRadius: BorderRadius.circular(50.0)),
      child: Center(
          child: Text(
        text,
        style: AppTextStyles.medium16.copyWith(
            color: isSelected ? Colors.white : Colors.grey,
            fontSize: responsiveFontSize(context, 0.0, 0.04)),
      )),
    );
  }
}
