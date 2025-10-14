import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Home/presentation/views/cart_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_app_bar_details_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/image_details.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_item_size.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_of_item_gallery.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: responsivePaddingWithWidth(context, 0.04),
          ),
          child: CustomAppBarDetailsScreen(),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ImageDetails()),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.03,
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(32)),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsivePaddingWithWidth(context, 0.05),
                vertical: responsivePaddingWithHeight(context, 0.02),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  BestSellerText(),
                  TitleDetailsScreenText(),
                  PriceDetailsScreen(),
                  SizedBox(height: 4),
                  DetailsScreenDescriptionText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  GalleryText(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  ListOfItemGallery(),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.005),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.current.filtersSize,
                      style: AppTextStyles.medium20.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: responsiveFontSize(context, 0.025, 0.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.005,
                  ),
                  ListItemSize(),
                  Expanded(child: SizedBox(height: 100)),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              S.current.Price,
                              style: AppTextStyles.regular16.copyWith(
                                fontSize:
                                    responsiveFontSize(context, 0.02, 0.0),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              r"$" "493.00",
                              style: AppTextStyles.medium20.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        title: S.current.detailsAddToCart,
                        onPressed: () {
                          navigatorWithSlideAnimation(
                              context, CartScreen(), Offset(1, 0));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}

class GalleryText extends StatelessWidget {
  const GalleryText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.detailsGallery,
        style: AppTextStyles.medium20.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: responsiveFontSize(context, 0.025, 0.0),
        ),
      ),
    );
  }
}

class DetailsScreenDescriptionText extends StatelessWidget {
  const DetailsScreenDescriptionText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.current.detailsDescription,
      maxLines: 3,
      style: AppTextStyles.regular14.copyWith(
        overflow: TextOverflow.ellipsis,
        fontSize: responsiveFontSize(context, 0.017, 0.0),
      ),
    );
  }
}

class PriceDetailsScreen extends StatelessWidget {
  const PriceDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        r"$" "493.00",
        style: AppTextStyles.medium20.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class TitleDetailsScreenText extends StatelessWidget {
  const TitleDetailsScreenText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.homeNikeJordan,
        style: AppTextStyles.medium16
            .copyWith(fontSize: responsiveFontSize(context, 0.03, 0.0)),
      ),
    );
  }
}

class BestSellerText extends StatelessWidget {
  const BestSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        S.current.homeBestSeller,
        style: AppTextStyles.regular14.copyWith(
            color: AppColors.primaryColor,
            overflow: TextOverflow.ellipsis,
            fontSize: responsiveFontSize(context, 0.02, 0.00)),
      ),
    );
  }
}
