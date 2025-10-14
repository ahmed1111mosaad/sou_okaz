import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/details_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/icon_heart.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ItemProduct extends StatelessWidget {
  const ItemProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorWithFadeAnimation(context, DetailsScreen());
      },
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              MediaQuery.of(context).size.height * 0.023,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.homeNikeAirJordan,
                    style: AppTextStyles.medium20.copyWith(
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Text(
                    r"$" "493.00",
                    style: AppTextStyles.medium16
                        .copyWith(
                            fontSize: responsiveFontSize(context, 0.0, 0.04))
                        .copyWith(color: Color(0xFFFF5F57)),
                  )
                ],
              ),
              Spacer(),
              Image.asset(
                Assets.assetsImagesNikeAirJordan,
              ),
              Align(alignment: Alignment.topRight, child: IconHeart())
            ],
          ),
        ),
      ),
    );
  }
}
