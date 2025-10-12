import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/main.dart';

class CustomArrowBackAppBar extends StatelessWidget {
  const CustomArrowBackAppBar({super.key, this.isLogin = false});
  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isArabic() ? Alignment.centerRight : Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: isArabic() ? 8.0 : 0.0),
        child: SizedBox(
          width: responsiveFontSize(context, 0, 0.12),
          height: responsiveFontSize(context, 0.052, 0),
          child: IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: CircleBorder(),
            ),
            onPressed: () {
              if (isLogin) {
              } else {
                Navigator.of(context).pop();
              }
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 17,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ),
    );
  }
}
