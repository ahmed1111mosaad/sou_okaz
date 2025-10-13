import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/current_price.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_slider_price.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/gender_text.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_item_size.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_view_item_gender.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/price_text.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/size_text.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class CustomShowModalBottomSheet extends StatefulWidget {
  const CustomShowModalBottomSheet({
    super.key,
  });

  @override
  State<CustomShowModalBottomSheet> createState() =>
      _CustomShowModalBottomSheetState();
}

class _CustomShowModalBottomSheetState
    extends State<CustomShowModalBottomSheet> {
  double currentPrice = 300;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(
            color: Color(0xFFE9EDEF),
            thickness: 6,
            indent: 150,
            endIndent: 150,
            radius: BorderRadius.circular(24),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 5,
              ),
              Text(
                S.current.filtersTitle,
                style: AppTextStyles.medium24,
              ),
              Spacer(flex: 4),
              Text(
                S.current.filtersReset,
                style: AppTextStyles.regular12,
              ),
              SizedBox(width: 15)
            ],
          ),
          SizedBox(height: 15),
          GenderText(),
          SizedBox(height: 10),
          ListItemGender(),
          SizedBox(height: 20),
          SizeText(),
          SizedBox(height: 10),
          ListItemSize(),
          SizedBox(height: 20),
          Row(
            children: [
              PriceText(),
              Spacer(),
              CurrentPrice(currentPrice: currentPrice),
            ],
          ),
          CustomSliderPrice(
            currentPrice: (double value) {
              currentPrice = value;
              setState(() {});
            },
          ),
          Spacer(),
          CustomElevatedButton(
            title: S.current.filtersApply,
            onPressed: () {},
          ),
          Spacer(),
        ],
      ),
    );
  }
}
