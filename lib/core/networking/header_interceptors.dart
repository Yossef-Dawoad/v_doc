import 'dart:async';
import 'package:chopper/chopper.dart';

// 1
class BearerHeaderInterceptor implements Interceptor {
  BearerHeaderInterceptor(this.token);
  final String token;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(Chain<BodyType> chain) async {
    final request = applyHeader(chain.request, 'auth_token', 'Bearer $token');
    return chain.proceed(request);
  }
}
