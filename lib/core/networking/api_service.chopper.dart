// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$APIService extends APIService {
  _$APIService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = APIService;

  @override
  Future<Response<LoginResponse>> login(LoginRequestBody loginRequestBody) {
    final Uri $url =
        Uri.parse('https://vcare.integration25.com/api/auth/login');
    final $body = loginRequestBody;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<LoginResponse, LoginResponse>($request);
  }

  @override
  Future<Response<SignUpResponse>> signUp(SignUpRequestBody signUpRequestBody) {
    final Uri $url =
        Uri.parse('https://vcare.integration25.com/api/auth/register');
    final $body = signUpRequestBody;
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      body: $body,
    );
    return client.send<SignUpResponse, SignUpResponse>($request);
  }
}
