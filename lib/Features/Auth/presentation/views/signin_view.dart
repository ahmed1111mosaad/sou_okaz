import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_states.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/signin_view_body.dart';
import 'package:sou_okaz/core/helpers/functions/app_bar_arrow_back.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SuccessSignInState) {
          showSuccess(context, title: S.current.SuccessSignIn, description: '');
        }
        if (state is FailureSignInState) {
          showFailure(context, title: state.errMessage, description: '');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          color: const Color.fromARGB(255, 255, 246, 245),
          inAsyncCall: state is LoadingSignInState,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: appBarArrowBack(context, isLogin: true),
            body: SigninViewBody(),
          ),
        );
      },
    );
  }
}
/*



*/