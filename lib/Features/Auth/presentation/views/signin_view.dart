import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/login_view_body.dart';
import 'package:sou_okaz/core/helpers/functions/app_bar_arrow_back.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBarArrowBack(context),
      body: SigninViewBody(),
    );
  }
}
