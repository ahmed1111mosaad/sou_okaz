import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class ActiveItemVector extends StatelessWidget {
  const ActiveItemVector({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: responsivePaddingWithWidth(context, 0.24),
      height: responsivePaddingWithHeight(context, 0.059),
      decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Container(
                  width: responsivePaddingWithWidth(context, 0.1),
                  height: responsivePaddingWithHeight(context, 0.05),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(52)),
                  child: Image.asset(
                    image,
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Text(
              title,
              style: AppTextStyles.medium14.copyWith(
                  color: Colors.white,
                  fontSize: responsiveFontSize(context, 0, 0.03)),
            ),
          )
        ],
      ),
    );
  }
}
