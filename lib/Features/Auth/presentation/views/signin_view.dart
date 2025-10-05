import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/sign_in_bloc_consumer.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/signin_view_body.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInBlocConsumer(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SigninViewBody(),
      ),
    );
  }
}
