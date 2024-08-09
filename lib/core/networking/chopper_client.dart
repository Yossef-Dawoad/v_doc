import 'package:chopper/chopper.dart';
import 'package:v_doc/core/networking/api_constants.dart';
import 'package:v_doc/features/authentication/services/auth_service.dart';
import 'package:v_doc/features/doctors/domain/datasources/remote/doctor_remote_source.dart';

class AppChopperClient {
  late ChopperClient _client;
  AppChopperClient({
    String baseUrl = APIEndpoints.BaseUrl,
  }) {
    _client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      services: [
        AuthChopperService.create(),
        DoctorsChopperService.create(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
        const HeadersInterceptor({'Cache-Control': 'no-cache', 'Accept': 'application/json'}),
      ],
      converter: const JsonConverter(),
    );
  }

  T getChopperService<T extends ChopperService>() {
    return _client.getService<T>();
  }
}
