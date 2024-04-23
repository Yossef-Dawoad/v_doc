import 'package:chopper/chopper.dart';

import 'package:v_doc/core/networking/api_constants.dart';
import 'package:v_doc/features/login/data/models/request_body.dart';
import 'package:v_doc/features/login/data/models/response_body.dart';
import 'package:v_doc/features/signup/data/models/request_body.dart';
import 'package:v_doc/features/signup/data/models/response_body.dart';

part 'api_service.chopper.dart';

typedef TypeResponse<T> = Response<T>;
typedef FutureTypeResponse<T> = Future<TypeResponse<T>>;

@ChopperApi(baseUrl: APIConstants.apiBaseUrl)
abstract class APIService extends ChopperService {
// --------------------------------- Auth --------------------------------- //
// --------------------------------- LogIN --------------------------------- //

  @Post(path: APIConstants.login)
  FutureTypeResponse<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

// --------------------------------- SignUp --------------------------------- //

  @Post(path: APIConstants.signUp)
  FutureTypeResponse<SignUpResponse> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );

// --------------------------------- Init --------------------------------- //
  static APIService create([ChopperClient? client]) {
    return _$APIService(
      client ??
          ChopperClient(
            services: [_$APIService()],
            converter: const JsonConverter(),
            interceptors: [
              HttpLoggingInterceptor(),
              const HeadersInterceptor({'Cache-Control': 'no-cache'}),
            ],
          ),
    );
  }
}
