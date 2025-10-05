import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/enter_verification_code.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_phone_number.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:sou_okaz/main.dart';

class RecoveryPassowrdBody extends StatefulWidget {
  const RecoveryPassowrdBody({super.key});

  @override
  State<RecoveryPassowrdBody> createState() => _RecoveryPassowrdBodyState();
}

class _RecoveryPassowrdBodyState extends State<RecoveryPassowrdBody> {
  PhoneNumber? phoneNumber;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsivePaddingWithWidth(context, 0.05),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomArrowBackAppBar(),
                  SizedBox(height: responsiveFontSize(context, 0.04, 0)),
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        S.of(context).forgotPasswordTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: responsiveFontSize(context, 0, 0.066),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        S.of(context).forgotPasswordSubtitle,
                        style: AppTextStyles.regular16.copyWith(
                          fontSize:  responsiveFontSize(context, 0,0.041),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        S.of(context).forgotPasswordSubtitle1,
                        style: AppTextStyles.regular16.copyWith(
                          fontSize:  responsiveFontSize(context, 0,0.041),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .05),
                  Align(
                    alignment: isArabic()
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Text(
                      S.of(context).signUpPhoneNumber,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize:  responsiveFontSize(context, 0,0.04),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  CustomPhoneNumber(
                    onChanged: (phone) {
                      setState(() {
                        phoneNumber = phone;
                      });
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .015),
                  CustomElevatedButton(
                    title: S.of(context).forgotPasswordContinue,
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        navigatorWithSlideAnimation(
                          context,
                          EnterVerificationCode(phoneNumber: phoneNumber!),
                          Offset(1, 0),
                        );
                      }
                    },
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
