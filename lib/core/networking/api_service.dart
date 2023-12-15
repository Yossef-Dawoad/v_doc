import 'package:chopper/chopper.dart';

import 'package:recipe_hub/core/networking/constants.dart';
import 'package:recipe_hub/features/login/data/models/request_body.dart';
import 'package:recipe_hub/features/login/data/models/response_body.dart';

part 'api_service.chopper.dart';

typedef TypeResponse<T> = Response<T>;
typedef FutureTypeResponse<T> = Future<TypeResponse<T>>;

@ChopperApi(baseUrl: APIConstants.apiBaseUrl)
abstract class APIService extends ChopperService {
// --------------------------------- Auth --------------------------------- //

  @Post(path: APIConstants.login)
  FutureTypeResponse<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

// --------------------------------- Init --------------------------------- //
  static APIService create([ChopperClient? client]) {
    return _$APIService(
      client ??
          ChopperClient(
            services: [_$APIService()],
            interceptors: [
              const HeadersInterceptor({'key': 'value'}),
            ],
          ),
    );
  }
}
