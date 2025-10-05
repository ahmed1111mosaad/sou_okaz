import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signin_view.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: CustomElevatedButton(
            title: 'sign out',
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              await GoogleSignIn().signOut();
              navigatorWithSlideAnimationPushReplacement(
                  context, SigninView(), Offset(1, 0));
            },
          ),
        ),
      ),
    );
  }
}
