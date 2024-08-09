import 'package:chopper/chopper.dart';

import 'package:v_doc/core/networking/api_constants.dart';
import 'package:v_doc/core/utils/types/chopper_types.dart';
import 'package:v_doc/features/authentication/login/data/models/request_body.dart';
import 'package:v_doc/features/authentication/login/data/models/response_body.dart';
import 'package:v_doc/features/authentication/signup/data/models/request_body.dart';
import 'package:v_doc/features/authentication/signup/data/models/response_body.dart';

part 'auth_service.chopper.dart';

@ChopperApi(baseUrl: APIEndpoints.authEP)
abstract class AuthChopperService extends ChopperService {
  @Post(path: APIEndpoints.login)
  FutureTypeResponse<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @Post(path: APIEndpoints.signUp)
  FutureTypeResponse<SignUpResponse> signUp(
    @Body() SignUpRequestBody signUpRequestBody,
  );

  static AuthChopperService create([ChopperClient? client]) => _$AuthChopperService(client);
}
