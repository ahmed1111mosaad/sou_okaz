import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_in_cubit/sign_in_states.dart';

class SignInCubit extends Cubit<SignInStates> {
  SignInCubit(this.authRepo) : super(InitialSignInState());
  final AuthRepo authRepo;

  signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    emit(LoadingSignInState());
    var result = await authRepo.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    result.fold(
      (failure) {
        emit(FailureSignInState(errMessage: failure.message));
      },
      (userEntity) {
        emit(SuccessSignInState(userEntity: userEntity));
      },
    );
  }

  signInWithGoogle() async {
    emit(LoadingSignInState());
    var result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) {
        emit(FailureSignInState(errMessage: failure.message));
      },
      (userEntity) {
        emit(SuccessSignInState(userEntity: userEntity));
      },
    );
  }

  signInWithFacebook() async {
    emit(LoadingSignInState());
    var result = await authRepo.signInWithFacebook();
    result.fold((failure) {
      emit(FailureSignInState(errMessage: failure.message));
    }, (userEntity) {
      emit(SuccessSignInState(userEntity: userEntity));
    });
  }
}
