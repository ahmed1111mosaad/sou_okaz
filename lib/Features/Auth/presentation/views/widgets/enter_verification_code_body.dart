import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/new_passowrd.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/resend_code.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:verification_code/verification_code.dart';

class EnterVerificationCodeBody extends StatelessWidget {
  const EnterVerificationCodeBody({super.key});

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomArrowBackAppBar(),
                SizedBox(height: responsiveFontSize(context, 0.04, 0)),
                Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      S.of(context).forgotPasswordVerificationTitle,
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
                        fontSize: responsiveFontSize(context, 0, 0.041),
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
                        fontSize: responsiveFontSize(context, 0, 0.041),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                VerificationCode(
                  height: responsiveFontSize(context, 0.085, 0),
                  codeBgColor: Theme.of(context).colorScheme.onSurface,
                  borderSelectColor: Color(0xffF4A91F),
                  itemWidth: double.infinity,
                  contentColor: Theme.of(context).colorScheme.onSurface,
                  style: CodeStyle.rectangle,
                  borderColor: const Color(0xFFE6E9E9),
                  contentSize: 23,
                  maxLength: 4,
                  onCompleted: (String value) {},
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .04),
                CustomElevatedButton(
                  title: S.of(context).forgotPasswordVerificationButton,
                  onPressed: () {
                    // ToDo: Delete all the code here in onPressed before starting logic
                    navigatorWithSlideAnimation(
                      context,
                      NewPassword(),
                      Offset(1, 0),
                    );
                  },
                ),
                SizedBox(height: 6.0),
                GestureDetector(onTap: () {}, child: ResendCode()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
