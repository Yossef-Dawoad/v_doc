import 'package:recipe_hub/core/errors/server_errors.dart';
import 'package:recipe_hub/core/networking/api_service.dart';
import 'package:recipe_hub/core/utils/types/result_type.dart';

import '../models/request_body.dart';

typedef FutureResult<T, E> = Future<Result<T, E>>;

class SignUpRepository {
  final APIService _apiService;

  SignUpRepository(this._apiService);

  FutureResult<TypeResponse, ServerError> signUp(
    SignUpRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return Result.success(response);
    } catch (error) {
      return Result.failure(ServerError(msg: error.toString()));
    }
  }
}
