// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AuthChopperService extends AuthChopperService {
  _$AuthChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AuthChopperService;

  @override
  Future<Response<LoginResponse>> login(LoginRequestBody loginRequestBody) {
    final Uri $url = Uri.parse('/auth/login');
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
    final Uri $url = Uri.parse('/auth/register');
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
