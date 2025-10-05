import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/main.dart';

class OnboardingItemText extends StatelessWidget {
  const OnboardingItemText({
    super.key,
    required this.title,
    required this.title1,
    required this.subTitle,
    required this.subTitle1,
  });
  final String title;
  final String title1;
  final String subTitle;
  final String subTitle1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: Align(
            alignment: isArabic()
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontSize:
                      MediaQuery.of(context).size.height * .03 +
                      MediaQuery.of(context).size.width * .047,
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              title1,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontSize:
                    MediaQuery.of(context).size.height * .03 +
                    MediaQuery.of(context).size.width * .047,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Align(
          alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              subTitle,
              style: AppTextStyles.regular20.copyWith(
                fontSize:
                    MediaQuery.of(context).size.height * .009 +
                    MediaQuery.of(context).size.width * .034,
              ),
            ),
          ),
        ),
        Align(
          alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              subTitle1,
              style: AppTextStyles.regular20.copyWith(
                fontSize:
                    MediaQuery.of(context).size.height * .009 +
                    MediaQuery.of(context).size.width * .034,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
