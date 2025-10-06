import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/recovery_passowrd_body.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/recovery_pasword_bloc_consumer.dart';

class RecoveryPassword extends StatelessWidget {
  const RecoveryPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return RecoveryPaswordBlocConsumer(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: RecoveryPassowrdBody(),
      ),
    );
  }
}
