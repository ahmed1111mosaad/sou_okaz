import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/recovery_password.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signup_view.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/sign_in_with_button.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            autovalidateMode: autovalidateMode,
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 30),
                Center(
                  child: Text(
                    S.of(context).signInTitle,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    S.of(context).signInSubtitle,
                    style: AppTextStyles.regular16,
                  ),
                ),
                SizedBox(height: 50),
                
                // ? Email
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).signInEmail,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 6),

                // !
                CustomTextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: false,
                  onChanged: (String value) {
                    email = value;
                  },
                  validator: (value) {
                    String pattern =
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                    RegExp regex = RegExp(pattern);

                    if (value!.isEmpty) {
                      return S.of(context).signInValidatorEmpty;
                    } else if (!regex.hasMatch(value)) {
                      return S.of(context).signInValidatorValidEmail;
                    } else {
                      return null;
                    }
                  },
                  isPassword: false,
                ),
                SizedBox(height: 18.0),
                // ? Password
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    S.of(context).signInPassword,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 6),
                // !
                CustomTextFormField(
                  obscureText: true,
                  validator: (value) {
                    RegExp regExp = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                    );
                    if (value!.length < 8) {
                      return S.of(context).signInValidator1;
                    } else if (!regExp.hasMatch(value)) {
                      return S.of(context).signInValidator2;
                    } else if (value.isEmpty) {
                      return S.of(context).signInValidatorEmpty;
                    }
                    return null;
                  },
                  onChanged: (String value) {
                    password = value;
                  },
                  isPassword: true,
                ),
                SizedBox(height: 4),
                GestureDetector(
                  onTap: () {
                    navigatorWithSlideAnimation(
                      context,
                      RecoveryPassword(),
                      Offset(1, 0),
                    );
                  },
                  child: Text(
                    S.of(context).signInRecoveryPassword,
                    style: AppTextStyles.regular13,
                  ),
                ),
                SizedBox(height: 20),
                CustomElevatedButton(
                  title: S.of(context).signInButton,
                  onPressed: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                      setState(() {});
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                ),
                SizedBox(height: 35),
                SignInWithButton(
                  image: Assets.assetsImagesGoogleIcon,
                  title: S.of(context).signInWithGoogle,
                ),
                SizedBox(height: 20),
                SignInWithButton(
                  image: Assets.assetsImagesFacebookIcon,
                  title: S.of(context).signInWithFacebook,
                ),
                SizedBox(height: 20),
                SignInWithButton(
                  image: Assets.assetsImagesAppleIcon,
                  title: S.of(context).signInWithApple,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).signInNoAccount,
                      style: AppTextStyles.regular13,
                    ),
                    GestureDetector(
                      onTap: () {
                        navigatorWithSlideAnimation(
                          context,
                          SignUpView(),
                          Offset(1, 0),
                        );
                      },
                      child: Text(
                        S.of(context).signInSignUpFree,
                        style:Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

