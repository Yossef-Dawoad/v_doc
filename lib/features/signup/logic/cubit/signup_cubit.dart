import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_doc/features/signup/data/models/request_body.dart';
import 'package:v_doc/features/signup/data/repositories/signup_repository.dart';

part 'signup_state.dart';
part 'signup_cubit.freezed.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepository _signUpRepository;

  SignupCubit(this._signUpRepository) : super(const SignupState.initial());

  void emitSignUpState({required SignUpRequestBody reqeuestBody}) async {
    emit(const SignupState.loading());
    final response = await _signUpRepository.signUp(reqeuestBody);

    response.when(
      success: (response) => emit(SignupState.success(response.body)),
      failure: (err) => emit(SignupState.error(error: err.msg)),
    );
  }
}
