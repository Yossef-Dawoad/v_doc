// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_remote_source.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$DoctorsChopperService extends DoctorsChopperService {
  _$DoctorsChopperService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = DoctorsChopperService;

  @override
  Future<Response<SpecializationsResponse>> fetchSpecialization() {
    final Uri $url = Uri.parse('/specialization/index');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SpecializationsResponse, SpecializationsResponse>($request);
  }
}
