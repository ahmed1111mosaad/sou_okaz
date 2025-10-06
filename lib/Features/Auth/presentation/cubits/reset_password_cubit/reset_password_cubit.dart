import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/reset_password_cubit/reset_password_states.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordStates> {
  ResetPasswordCubit(this.authRepo) : super(InitialResetPasswordState());
  final AuthRepo authRepo;

  resetPassword({required String email}) async {
    emit(LoadingResetPasswordState());
    var result = await authRepo.resetPassword(email: email);
    result.fold((failure) {
      emit(FailureResetPasswordState(errMessage: failure.message));
    }, (success) {
      emit(SuccessResetPasswordState());
    });
  }
}
