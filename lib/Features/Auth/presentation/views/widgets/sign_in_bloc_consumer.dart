import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_cubit.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_states.dart';
import 'package:sou_okaz/Features/Home/presentation/views/main_screen.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_failure.dart';
import 'package:sou_okaz/core/helpers/functions/snackbar/show_success.dart';
import 'package:sou_okaz/generated/l10n.dart';

class SignInBlocConsumer extends StatelessWidget {
  const SignInBlocConsumer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInStates>(
      listener: (context, state) {
        if (state is SuccessSignInState) {
          showSuccess(context, title: S.of(context).SuccessSignIn, description: '');
          navigatorWithFadeAnimationPushReplacement(context, MainScreen());
        }
        if (state is FailureSignInState) {
          showFailure(context, title: state.errMessage, description: '');
          print(state.errMessage);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          color: const Color.fromARGB(255, 255, 246, 245),
          progressIndicator: CircularProgressIndicator(
            color: Colors.deepOrange,
          ),
          inAsyncCall: state is LoadingSignInState,
          child: child,
        );
      },
    );
  }
}
