import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';

class CustomBottomNavigtionBar extends StatefulWidget {
  const CustomBottomNavigtionBar({
    super.key,
    required this.onItemTapped,
  });
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigtionBar> createState() =>
      _CustomBottomNavigtionBarState();
}

class _CustomBottomNavigtionBarState extends State<CustomBottomNavigtionBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      buttonBackgroundColor: AppColors.primaryColor,
      index: selectedIndex,
      backgroundColor: Colors.transparent,
      items: <Widget>[
        selectedIndex == 0
            ? Image.asset(
                Assets.assetsImagesHomeNavigationBar,
                color: Colors.white,
              )
            : Image.asset(
                Assets.assetsImagesHomeNavigationBar,
                color: Colors.grey,
              ),
        selectedIndex == 1
            ? Image.asset(
                Assets.assetsImagesFavoutieNavigationBar,
                color: Colors.white,
              )
            : Image.asset(
                Assets.assetsImagesFavoutieNavigationBar,
                color: Colors.grey,
              ),
        selectedIndex == 2
            ? Image.asset(
                Assets.assetsImagesCheckoutNavigationBar,
                color: Colors.white,
              )
            : Image.asset(
                Assets.assetsImagesCheckoutNavigationBar,
                color: Colors.grey,
              ),
        selectedIndex == 3
            ? Image.asset(
                Assets.assetsImagesNotificationNavigationBar,
                color: Colors.white,
              )
            : Image.asset(
                Assets.assetsImagesNotificationNavigationBar,
                color: Colors.grey,
              ),
        selectedIndex == 4
            ? Image.asset(
                Assets.assetsImagesProfileNavigationBar,
                color: Colors.white,
              )
            : Image.asset(
                Assets.assetsImagesProfileNavigationBar,
                color: Colors.grey,
              ),
      ],
      onTap: (index) {
        selectedIndex = index;
        widget.onItemTapped(selectedIndex);
        setState(() {});
      },
    );
  }
}
