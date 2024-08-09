import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_doc/features/doctors/domain/repositories/doctor_repo.dart';

import '../../domain/models/specializations_response.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  final DoctorRepo _doctorRepo;
  DoctorBloc(this._doctorRepo) : super(const _Initial()) {
    on<DoctorEvent>((event, emit) => emit(const DoctorState.loading()));

    on<GetSpecializations>(_onGetSpecializations);
  }

  FutureOr<void> _onGetSpecializations(event, emit) async {
    final result = await _doctorRepo.getDoctorSpecializations();
    result.when(
      success: (specializations) => emit(DoctorState.specializationsSuccess(specializations)),
      failure: (error) => emit(DoctorState.specializationsError(error.msg)),
    );
  }
}
