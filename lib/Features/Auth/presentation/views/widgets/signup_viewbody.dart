import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_phone_number.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/signin_view_body.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/terms_and_conditions.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:sou_okaz/main.dart';

class SignupViewbody extends StatefulWidget {
  const SignupViewbody({super.key});

  @override
  State<SignupViewbody> createState() => _SignupViewbodyState();
}

class _SignupViewbodyState extends State<SignupViewbody> {
  String? name;
  String? email;
  PhoneNumber? phoneNumber;
  String? password;
  bool isTermsAccepted = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomArrowBackAppBar(),
                  SizedBox(height: MediaQuery.of(context).size.height * .04),
                  // ? Create Account
                  Center(
                    child: Text(
                      S.of(context).signUpTitle,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: responsiveFontSize(context, 0, 0.09),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  // ? Let's create account together
                  Center(
                    child: Text(
                      S.of(context).signUpSubtitle,
                      style: AppTextStyles.regular16.copyWith(
                        fontSize: responsiveFontSize(context, 0, 0.05),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * .05),
                  // ? Full Name
                  Align(
                    alignment: isArabic()
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Text(
                      S.of(context).signUpFullName,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: responsiveFontSize(context, 0, 0.045),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  CustomTextFormField(
                    isPassword: false,
                    obscureText: false,
                    onChanged: (value) {
                      name = value;
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return S.of(context).signInValidatorEmpty;
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 18.0),

                  // ? Phone Number
                  Align(
                    alignment: isArabic()
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Text(
                      S.of(context).signUpPhoneNumber,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: responsiveFontSize(context, 0, 0.045),
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
                    validator: (phone) {
                      if (phone == null || phone.completeNumber.isEmpty) {
                        return S.of(context).signInValidatorEmpty;
                      } else {
                        return null;
                      }
                    },
                  ),
                  // ? Email Address
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
                  SizedBox(height: 6),
                  CustomTextFormField(
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
                  SizedBox(height: 6),
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
                  SizedBox(height: 10),
                  // ! Terms And Conditions
                  TermsAndConditions(
                    onChanged: (bool value) {
                      isTermsAccepted = value;
                    },
                  ),
                  SizedBox(height: 25),
                  // ! Sign Up Button
                  CustomElevatedButton(
                    title: S.of(context).signUpButton,
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        if (isTermsAccepted) {
                          BlocProvider.of<SignUpCubit>(
                            context,
                          ).createUserWithEmailAndPassowrd(
                            email: email!,
                            password: password!,
                            name: name!,
                            phoneNumber: phoneNumber!.completeNumber,
                          );
                        } else {
                          showFailure(
                            context,
                            title: S.of(context).snackbarTitleFailure,
                            description: S
                                .of(context)
                                .snackbarDescriptionFailureTerms,
                          );
                        }
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).signUpHaveAccount,
                        style: AppTextStyles.regular12,
                      ),
                      GestureDetector(
                        onTap: () {
                          // هنا بدل Pop عادية → Pop مع data
                          Navigator.pop(context);
                        },
                        child: Text(
                          S.of(context).signInButton,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
