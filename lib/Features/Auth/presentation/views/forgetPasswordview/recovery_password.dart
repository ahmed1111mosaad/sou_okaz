import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/recovery_passowrd_body.dart';
import 'package:sou_okaz/core/helpers/functions/app_bar_arrow_back.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBarArrowBack(context),
      resizeToAvoidBottomInset: true,
      body: RecoveryPassowrdBody(),
    );
  }
}
