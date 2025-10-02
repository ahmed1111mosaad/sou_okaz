import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_states.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/signup_viewbody.dart';
import 'package:sou_okaz/core/helpers/functions/app_bar_arrow_back.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: appBarArrowBack(context),
      body: BlocConsumer<SignUpCubit, SignUpStates>(
        listener: (context, state) {
          if (state is SuccessSignUpState) {
            showSuccess(
              context,
              title: S.of(context).SuccessSignUp,
              description: '',
            );
          }
          if (state is FailureSignUpState) {
            showFailure(context, title: state.errMessage, description: '');
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is LoadingSignUpState ? true : false,
            child: SignupViewbody(),
          );
        },
      ),
    );
  }
}
