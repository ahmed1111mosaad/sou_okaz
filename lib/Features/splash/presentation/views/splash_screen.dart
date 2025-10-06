import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sou_okaz/Features/splash/presentation/views/widgets/custom_splash_screen_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0f2733),
      appBar: AppBar(
        backgroundColor: Color(0xff0f2733),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: CustomSplashScreenBody(),
    );
  }
}
