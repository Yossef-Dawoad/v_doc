import 'package:v_doc/core/errors/server_errors.dart';
import 'package:v_doc/core/utils/types/result_type.dart';

import '../datasources/remote/doctor_remote_source.dart';
import '../models/specializations_response.dart';

class DoctorRepo {
  final DoctorsChopperService _doctorRemoteSource;

  DoctorRepo({
    required DoctorsChopperService doctorRemoteSource,
  }) : _doctorRemoteSource = doctorRemoteSource;

  Future<Result<SpecializationsResponse, ServerError>> getDoctorSpecializations() async {
    try {
      final specializations = await _doctorRemoteSource.fetchSpecialization();
      if (!specializations.isSuccessful) {
        return Result.failure(ServerError(msg: specializations.error.toString()));
      }
      return Result.success(specializations.body!);
    } on ServerError catch (error) {
      return Result.failure(ServerError(msg: error.msg));
    }
  }
}
