import 'package:chopper/chopper.dart';
import 'package:v_doc/core/networking/api_constants.dart';
import 'package:v_doc/core/utils/types/chopper_types.dart';

import '../../models/specializations_response.dart';

part 'doctor_remote_source.chopper.dart';

@ChopperApi()
abstract class DoctorsChopperService extends ChopperService {
  @Get(path: APIEndpoints.specializationEP)
  FutureTypeResponse<SpecializationsResponse> fetchSpecialization();

  static DoctorsChopperService create([ChopperClient? client]) => _$DoctorsChopperService(client);
}
