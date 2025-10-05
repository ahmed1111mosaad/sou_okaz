import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';

class SmallLeftPoint extends StatelessWidget {
  const SmallLeftPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.55,
      child: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.07,
        ),
        child: Container(
          width: 11,
          height: 11,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(200),
          ),
        ),
      ),
    );
  }
}
