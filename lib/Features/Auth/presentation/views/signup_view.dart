import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/sign_up_view_bloc_consumer.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/signup_viewbody.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SignUpViewBlocConsumer(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SignupViewbody(),
      ),
    );
  }
}
