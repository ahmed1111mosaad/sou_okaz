import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/forgetPasswordview/recovery_password.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/signup_view.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/sign_in_with_button.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_slide_animation.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:sou_okaz/main.dart';

class SigninViewBody extends StatefulWidget {
  const SigninViewBody({super.key});

  @override
  State<SigninViewBody> createState() => _SigninViewBodyState();
}

class _SigninViewBodyState extends State<SigninViewBody> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? email;
  String? password;

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
              autovalidateMode: autovalidateMode,
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomArrowBackAppBar(
                    isLogin: true,
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.035, 0)),

                  // ? Title
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        S.of(context).signInTitle,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: responsiveFontSize(context, 0, 0.09),
                            ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        S.of(context).signInSubtitle,
                        style: AppTextStyles.regular16.copyWith(
                          fontSize: responsiveFontSize(context, 0, 0.045),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.06, 0)),

                  // ? Email
                  Align(
                    alignment: isArabic()
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Text(
                      S.of(context).signInEmail,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: responsiveFontSize(context, 0, 0.045),
                          ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  CustomTextFormField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    onChanged: (value) => email = value,
                    validator: (value) {
                      String pattern =
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
                      RegExp regex = RegExp(pattern);

                      if (value!.isEmpty) {
                        return S.of(context).signInValidatorEmpty;
                      } else if (!regex.hasMatch(value)) {
                        return S.of(context).signInValidatorValidEmail;
                      }
                      return null;
                    },
                    isPassword: false,
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.02, 0)),

                  // ? Password
                  Align(
                    alignment: isArabic()
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Text(
                      S.of(context).signInPassword,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: responsiveFontSize(context, 0, 0.045),
                          ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  CustomTextFormField(
                    obscureText: true,
                    isPassword: true,
                    onChanged: (value) => password = value,
                    validator: (value) {
                      RegExp regExp = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$',
                      );
                      if (value!.isEmpty) {
                        return S.of(context).signInValidatorEmpty;
                      } else if (value.length < 8) {
                        return S.of(context).signInValidator1;
                      } else if (!regExp.hasMatch(value)) {
                        return S.of(context).signInValidator2;
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 4),

                  // ? Forget Password
                  GestureDetector(
                    onTap: () {
                      navigatorWithSlideAnimation(
                        context,
                        const RecoveryPassword(),
                        const Offset(1, 0),
                      );
                    },
                    child: Text(
                      S.of(context).signInRecoveryPassword,
                      style: AppTextStyles.regular13.copyWith(
                        decoration: TextDecoration.underline,
                        fontSize: responsiveFontSize(context, 0, 0.036),
                      ),
                    ),
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.025, 0)),

                  // ? Sign In with email and password Button
                  CustomElevatedButton(
                    title: S.of(context).signInButton,
                    onPressed: () {
                      if (key.currentState!.validate()) {
                        key.currentState!.save();
                        BlocProvider.of<SignInCubit>(
                          context,
                        ).signInWithEmailAndPassword(
                          email: email!,
                          password: password!,
                        );
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.035, 0)),

                  // ? Social Buttons
                  SignInWithButton(
                    image: Assets.assetsImagesGoogleIcon,
                    title: S.of(context).signInWithGoogle,
                    onPressed: () {
                      BlocProvider.of<SignInCubit>(context).signInWithGoogle();
                    },
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.023, 0)),
                  SignInWithButton(
                    image: Assets.assetsImagesFacebookIcon,
                    title: S.of(context).signInWithFacebook,
                    onPressed: () {
                      context.read<SignInCubit>().signInWithFacebook();
                    },
                  ),
                  SizedBox(height: responsiveFontSize(context, 0.023, 0)),
                  SignInWithButton(
                    image: Assets.assetsImagesAppleIcon,
                    title: S.of(context).signInWithApple,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),

                  // ? Don't Have Account
                  Center(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            S.of(context).signInNoAccount,
                            style: AppTextStyles.regular13.copyWith(
                              fontSize: responsiveFontSize(context, 0, 0.034),
                            ),
                          ),
                          const SizedBox(width: 6),
                          GestureDetector(
                            onTap: () {
                              navigatorWithSlideAnimation(
                                context,
                                const SignUpView(),
                                Offset(1, 0),
                              );
                            },
                            child: Text(
                              S.of(context).signInSignUpFree,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    decoration: TextDecoration.underline,
                                    fontSize: responsiveFontSize(
                                      context,
                                      0,
                                      0.038,
                                    ),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
