import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/new_password_body.dart';
import 'package:sou_okaz/core/helpers/functions/app_bar_arrow_back.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appBarArrowBack(context), body: NewPasswordBody());
  }
}
