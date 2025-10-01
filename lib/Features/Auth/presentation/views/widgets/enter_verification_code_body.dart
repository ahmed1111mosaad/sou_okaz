import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/new_passowrd.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/resend_code.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:verification_code/verification_code.dart';

class EnterVerificationCodeBody extends StatelessWidget {
  const EnterVerificationCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              S.of(context).forgotPasswordVerificationTitle,
              style: AppTextStyles.medium28,
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Text(
              S.of(context).forgotPasswordSubtitle,
              style: AppTextStyles.regular16,
            ),
          ),
          Center(
            child: Text(
              S.of(context).forgotPasswordSubtitle1,
              style: AppTextStyles.regular16,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .05),
          VerificationCode(
            height: 70,
            borderSelectColor: Color(0xffF4A91F),
            itemWidth: double.infinity,
            style: CodeStyle.rectangle,
            borderColor: const Color(0xFFE6E9E9),
            contentColor: Color(0xff0C0D0D),
            contentSize: 23,
            maxLength: 4,
            onCompleted: (String value) {
              print("CodeStyle.form value=$value");
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .04),
          CustomElevatedButton(
            title: S.of(context).forgotPasswordVerificationButton,
            onPressed: () {
              // ToDo: Delete all the code here in onPressed before starting logic
              navigatorWithSlideAnimation(context, NewPassword(), Offset(1, 0));

            },
          ),
          SizedBox(height: 6.0),
          GestureDetector(onTap: () {}, child: ResendCode()),
          Spacer(),
        ],
      ),
    );
  }
}
