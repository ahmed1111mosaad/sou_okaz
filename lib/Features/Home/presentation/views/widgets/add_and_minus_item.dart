import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class AddAndMinusItem extends StatelessWidget {
  const AddAndMinusItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 12,
          child: Icon(
            Icons.remove,
            size: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 8,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '1',
            style: AppTextStyles.medium14.copyWith(
              fontSize: responsiveFontSize(context, 0.0, 0.04),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        CircleAvatar(
          backgroundColor: AppColors.primaryColor,
          radius: 12,
          child: Icon(
            Icons.add,
            size: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
