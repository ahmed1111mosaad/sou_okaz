import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/get_data_locally.dart';
import 'package:sou_okaz/core/helpers/functions/trim_text.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class CustomAppBarHomeScreen extends StatelessWidget {
  const CustomAppBarHomeScreen({
    super.key,
    required this.greeting,
  });
  final String greeting;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.assetsImagesDiceFout,
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.058,
        ),
        Spacer(),
        Row(
          children: [
            ClipOval(
              clipBehavior: Clip.antiAlias,
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.029,
                backgroundColor: AppColors.lightPrimaryColor,
                child: Stack(
                  children: [
                    Positioned(
                      child: Image.asset(
                        Assets.assetsImagesAvatar,
                        height: MediaQuery.of(context).size.height * 0.91,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  greeting,
                  style: AppTextStyles.regular12,
                ),
                Text(
                  trimText(getUserDataLocally().name),
                  style: AppTextStyles.medium14,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            )
          ],
        ),
        Spacer(),
        Image.asset(
          Assets.assetsImagesNotification,
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.058,
        ),
      ],
    );
  }
}
