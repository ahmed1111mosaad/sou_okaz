import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_elevated_button.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';
import 'package:sou_okaz/main.dart';

class NewPasswordBody extends StatefulWidget {
  const NewPasswordBody({super.key});

  @override
  State<NewPasswordBody> createState() => _NewPasswordBodyState();
}

class _NewPasswordBodyState extends State<NewPasswordBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? newPassowrd;
  String? newPassowrdConfirm;
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Form(
        autovalidateMode: autovalidateMode,
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                S.of(context).newPasswordTitle,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SizedBox(height: 5),
            Center(
              child: Text(
                S.of(context).newPasswordSubtitle,
                style: AppTextStyles.regular16,
              ),
            ),
            SizedBox(height: 50),
            Align(
              alignment: isArabic()
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(
                S.of(context).newPasswordField,
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
                newPassowrd = value;
              },
              isPassword: true,
            ),
            SizedBox(height: 18.0),
            Align(
              alignment: isArabic()
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(
                S.of(context).newPasswordConfirmField,
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
                } else if (newPassowrd != newPassowrdConfirm) {
                  return "password doesn't match";
                }
                return null;
              },
              onChanged: (String value) {
                newPassowrdConfirm = value;
              },
              isPassword: true,
            ),
            SizedBox(height: 4),
            SizedBox(height: 20),
            CustomElevatedButton(
              title: S.of(context).newPasswordButton,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  setState(() {});
                  showSuccess(
                    context,
                    title: S.of(context).newPasswordChangedSuccessfully,
                    description: '',
                  );
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
