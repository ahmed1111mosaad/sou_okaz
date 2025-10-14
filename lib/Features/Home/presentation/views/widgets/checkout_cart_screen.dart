import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class CheckoutCartScreen extends StatelessWidget {
  const CheckoutCartScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(24.0)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23.0, vertical: 24.0),
          child: Column(
            children: [
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.current.cartSubtotal,
                      style:
                          AppTextStyles.medium16.copyWith(color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Text(S.current.homePrice493)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.current.cartShopping,
                      style:
                          AppTextStyles.medium16.copyWith(color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Text(S.current.homePrice493)
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              SizedBox(
                height: 2,
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 40,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 2,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        width: 8,
                        decoration: BoxDecoration(color: Color(0xFFEEEEEE)),
                      );
                    }),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.current.cartTotalCost,
                      style: AppTextStyles.medium16.copyWith(),
                    ),
                  ),
                  Spacer(),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.current.homePrice493,
                      style: AppTextStyles.medium18.copyWith(color: Colors.red),
                    ),
                  )
                ],
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  title: S.current.checkoutPayment,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
