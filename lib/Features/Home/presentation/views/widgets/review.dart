import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/review_screen.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/generated/l10n.dart';

class Review extends StatelessWidget {
  const Review({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigatorWithSlideAnimation(context, ReviewScreen(), Offset(1, 0));
      },
      child: Row(
        children: [
          Image.asset(Assets.assetsImagesStar),
          SizedBox(
            width: 6,
          ),
          Text(
            '4.5',
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            '(+30)',
            style: TextStyle(fontSize: 15, color: Colors.black54),
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            S.current.Review,
            style: TextStyle(
                fontSize: responsiveFontSize(context, 0.0, 0.04),
                color: const Color.fromARGB(255, 36, 113, 190),
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationStyle: TextDecorationStyle.solid),
          ),
        ],
      ),
    );
  }
}
