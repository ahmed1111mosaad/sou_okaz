import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sou_okaz/Features/Auth/domain/repo/auth_repo.dart';
import 'package:sou_okaz/Features/Auth/presentation/cubits/sign_up_cubit/sign_up_states.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  SignUpCubit({required this.authRepo}) : super(InitialSignUpState());
  final AuthRepo authRepo;
  createUserWithEmailAndPassowrd({
    required String email,
    required String password,
  }) async {
    emit(LoadingSignUpState());
    var results = await authRepo.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    results.fold(
      (failure) {
        emit(FailureSignUpState(errMessage: failure.message));
      },
      (userEntity) {
        emit(SuccessSignUpState(userEntity: userEntity));
      },
    );
  }
}
