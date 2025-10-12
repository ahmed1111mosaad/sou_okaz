import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ItemBestSeller extends StatelessWidget {
  const ItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.28,
      width: MediaQuery.of(context).size.width * .42,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.assetsImagesNikeJordan,
              fit: BoxFit.cover,
            ),
            Spacer(),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                S.current.homeBestSeller,
                style: AppTextStyles.regular13.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: responsiveFontSize(context, 0.015, 0.00)),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                S.current.homeNikeJordan,
                style: AppTextStyles.medium16.copyWith(
                    fontSize: responsiveFontSize(context, 0.019, 0.0)),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(S.current.bestSellerCategory,
                  style: AppTextStyles.regular12.copyWith(
                      fontSize: responsiveFontSize(context, .016, 0))),
            ),
            Flexible(child: SizedBox(height: 10)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    r"$" "493.00",
                    style: AppTextStyles.medium14.copyWith(
                        color: Color(
                          0xFFFF5F57,
                        ),
                        fontSize: responsiveFontSize(context, 0.018, 0)),
                  ),
                ),
                Spacer(
                  flex: 4,
                ),
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(500)),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(500)),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
