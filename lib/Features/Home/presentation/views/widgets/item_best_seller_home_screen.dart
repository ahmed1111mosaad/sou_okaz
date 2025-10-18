import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/cart_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/details_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/icon_heart.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ItemBestSellerHomeScreen extends StatelessWidget {
  const ItemBestSellerHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorWithFadeAnimation(context, DetailsScreen());
      },
      child: Container(
        width: MediaQuery.of(context).size.width * .42,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(18.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(alignment: Alignment.centerLeft, child: IconHeart()),
              Image.asset(
                Assets.assetsImagesNikeJordan,
                fit: BoxFit.scaleDown,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              Spacer(),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  S.current.homeBestSeller,
                  style: AppTextStyles.regular13.copyWith(
                      color: AppColors.primaryColor,
                      fontSize: responsiveFontSize(context, 0.017, 0.00)),
                ),
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  S.current.homeNikeJordan,
                  style: AppTextStyles.medium16.copyWith(
                      fontSize: responsiveFontSize(context, 0.021, 0.0)),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      r"$" "493.00",
                      style: AppTextStyles.medium14.copyWith(
                          color: Color(0xFFFF5F57),
                          fontSize: responsiveFontSize(context, 0.0, 0.035)),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      navigatorWithSlideAnimation(
                          context, CartScreen(), Offset(1, 0));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.09,
                      height: MediaQuery.of(context).size.height * 0.046,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18.0),
                            bottomRight: Radius.circular(18.0),
                          )),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
