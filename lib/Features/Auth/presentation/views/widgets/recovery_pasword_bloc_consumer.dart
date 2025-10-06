import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/reset_password_cubit/reset_password_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/reset_password_cubit/reset_password_states.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/generated/l10n.dart';

class RecoveryPaswordBlocConsumer extends StatelessWidget {
  final Widget child;
  const RecoveryPaswordBlocConsumer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ResetPasswordCubit, ResetPasswordStates>(
      listener: (context, state) {
        if (state is SuccessResetPasswordState) {
          showSuccess(context,
              title: S.of(context).resetPassword, description: '');
        Future.delayed(Duration(seconds: 2),(){
          Navigator.of(context).pop();
        });
        }
        if (state is FailureResetPasswordState) {
          showFailure(context, title: state.errMessage, description: '');
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoadingResetPasswordState,
          child: child,
        );
      },
    );
  }
}
