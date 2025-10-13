import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/favourite_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/home_screen_body.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/notification_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CustomBottomNavigtionBar(
        onItemTapped: (int value) {
          selectedIndex = value;
          setState(() {});
        },
      ),
      body: selectedIndex == 0
          ? HomeScreenBody()
          : selectedIndex == 1
              ? FavouriteScreen()
              : selectedIndex == 2
                  ? Center(
                      child: Text('Cart'),
                    )
                  : selectedIndex == 3
                      ? NotificationScreen()
                      : Center(
                          child: Text('profile'),
                        ),
    );
  }
}
