import 'package:flutter/material.dart';
import 'package:sou_okaz/core/app_colors.dart';

class SmallRightPoint extends StatelessWidget {
  const SmallRightPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.5,
      right: MediaQuery.of(context).size.width * 0.1,
      child: Container(
        width: 14,
        height: 14,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
