import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_hub/features/login/data/models/request_body.dart';
import 'package:recipe_hub/features/login/data/repository/login_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepository _loginRepository;
  LoginCubit(this._loginRepository) : super(const LoginState.initial());

  void emitLoginState({required LoginRequestBody reqeuestBody}) async {
    emit(const LoginState.loading());
    final response = await _loginRepository.login(reqeuestBody);
    response.when(
      success: (response) => emit(LoginState.success(response)),
      failure: (err) => emit(LoginState.error(error: err.msg)),
    );
  }
}
