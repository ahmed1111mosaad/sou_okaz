import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_states.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SignUpViewBlocConsumer extends StatelessWidget {
  const SignUpViewBlocConsumer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpStates>(
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
          color: const Color.fromARGB(255, 255, 246, 245),
          inAsyncCall: state is LoadingSignUpState,
          child: child,
        );
      },
    );
  }
}
