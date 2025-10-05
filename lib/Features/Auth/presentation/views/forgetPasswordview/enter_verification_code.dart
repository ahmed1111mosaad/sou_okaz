import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/enter_verification_code_body.dart';

class EnterVerificationCode extends StatelessWidget {
  const EnterVerificationCode({super.key, required this.phoneNumber});
  final PhoneNumber phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: EnterVerificationCodeBody());
  }
}
