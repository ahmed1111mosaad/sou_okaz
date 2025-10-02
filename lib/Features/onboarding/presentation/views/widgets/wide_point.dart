import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';

class WidePoint extends StatelessWidget {
  const WidePoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.2,
      left: MediaQuery.of(context).size.width * 0.15,
      child: Container(
        width: 16,
        height: 16,
        decoration: BoxDecoration(
          color: AppColors.lightPrimaryColor,
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
