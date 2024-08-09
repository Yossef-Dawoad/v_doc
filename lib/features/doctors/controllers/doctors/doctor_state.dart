part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _Initial;

  // Specializations
  const factory DoctorState.loading() = Loading;
  const factory DoctorState.specializationsSuccess(SpecializationsResponse specializations) =
      SpecializationsSuccess;
  const factory DoctorState.specializationsError(String msg) = SpecializationsError;
}
