import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/details_screen_description_text.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/get_data_locally.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/main.dart';

class ItemReview extends StatelessWidget {
  const ItemReview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                          MediaQuery.of(context).size.width * 0.02),
                  child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: MediaQuery.of(context).size.height * 0.029,
                      child: ClipOval(
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            Assets.assetsImagesReviewImage,
                            fit: BoxFit.cover,
                            width:
                                MediaQuery.of(context).size.width * 0.12,
                            height: MediaQuery.of(context).size.height *
                                0.056,
                          ))),
                ),
                Positioned(
                  right: MediaQuery.of(context).size.width * 0.004,
                  top: MediaQuery.of(context).size.height * 0.029,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.055,
                    height: MediaQuery.of(context).size.height * 0.021,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFB400),
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            '5.0',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: isArabic() ? 0.0 : 5.0,
                  top: MediaQuery.of(context).size.height * 0.01,
                  right: isArabic() ? 5.0 : 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      getUserDataLocally().name,
                      style: AppTextStyles.medium14.copyWith(
                          fontSize:
                              responsiveFontSize(context, 0.0, 0.035)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      '20/11/2025',
                      style: AppTextStyles.regular12.copyWith(
                          fontSize:
                              responsiveFontSize(context, 0.0, 0.032)),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
    Padding(
      padding: EdgeInsets.symmetric(
        horizontal: responsivePaddingWithWidth(context, 0.03),
      ),
      child: DetailsScreenDescriptionText(),
    ),
      ],
    );
  }
}
