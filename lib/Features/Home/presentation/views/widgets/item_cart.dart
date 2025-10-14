import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/add_and_minus_item.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/image_item_cart.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/title_item_cart.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ItemCart extends StatelessWidget {
  const ItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageItemCart(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.04),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleItemCart(),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    S.current.homePrice493,
                    style: AppTextStyles.medium14.copyWith(
                      fontSize: responsiveFontSize(context, 0.0, 0.035),
                    ),
                  ),
                ),
                Spacer(),
                AddAndMinusItem()
              ],
            ),
          ),
          Spacer(),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset(Assets.assetsImagesRemoveIcon),
            ],
          ),
        ],
      ),
    );
  }
}
