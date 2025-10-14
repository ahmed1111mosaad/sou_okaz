import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/details_screen.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: GestureDetector(
        onTap: () {
          navigatorWithFadeAnimation(context, DetailsScreen());
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * .29,
                height: MediaQuery.of(context).size.height * 0.13,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24.0)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    Assets.assetsImagesNikeAirMaxOrangeWhite,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: S.current.notificationItemText,
                      style: AppTextStyles.medium16.copyWith(
                        color: Colors.black,
                        fontSize: responsiveFontSize(context, 0.0, 0.04),
                      ),
                    ),
                  ])),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: S.current.notificationItemText1,
                      style: AppTextStyles.medium16.copyWith(
                        color: Colors.black,
                        fontSize: responsiveFontSize(context, 0.0, 0.04),
                      ),
                    ),
                  ])),
                  Spacer(),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: r'$364.00',
                      style: AppTextStyles.medium16.copyWith(
                        fontSize: responsiveFontSize(context, 0.0, 0.04),
                      ),
                    ),
                    TextSpan(
                      text: r'    $260.00',
                      style: AppTextStyles.medium16.copyWith(
                        color: Colors.grey,
                        fontSize: responsiveFontSize(context, 0.0, 0.04),
                      ),
                    ),
                  ])),
                  Spacer(
                    flex: 2,
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 8.0,
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '6 min ago',
                      style: AppTextStyles.regular14.copyWith(
                          fontSize: responsiveFontSize(context, 0, 0.035)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
