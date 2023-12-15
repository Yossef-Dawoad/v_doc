import 'package:recipe_hub/core/errors/server_errors.dart';
import 'package:recipe_hub/core/networking/api_service.dart';
import 'package:recipe_hub/core/types/result_type.dart';

import '../models/request_body.dart';

typedef FutureResult<T, E> = Future<Result<T, E>>;

class LoginRepository {
  final APIService _apiService;

  LoginRepository(this._apiService);

  FutureResult<TypeResponse, ServerError> login(
    LoginRequestBody loginRequestBody,
  ) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return Result.success(response);
    } catch (error) {
      return Result.failure(ServerError(msg: error.toString()));
    }
  }
}
