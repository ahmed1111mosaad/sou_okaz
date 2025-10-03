import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sou_okaz/core/theme/theme_data.dart';
import 'package:sou_okaz/main.dart';

AppBar appBarArrowBack(BuildContext context, {bool isLogin = false}) {
  return AppBar(
    systemOverlayStyle: Theme.of(context).brightness == Brightness.light
        ? SystemUiOverlayStyle.dark
        : SystemUiOverlayStyle.light,
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Padding(
      padding: EdgeInsets.symmetric(horizontal: isArabic() ? 8.0 : 0.0),
      child: IconButton(
        padding: EdgeInsets.all(12.0),
        constraints: BoxConstraints(minHeight: 45, minWidth: 45),
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
  );
}
