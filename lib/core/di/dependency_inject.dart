import 'package:chopper/chopper.dart';
import 'package:get_it/get_it.dart';
import 'package:v_doc/core/networking/api_constants.dart';
import 'package:v_doc/core/networking/chopper_client.dart';
import 'package:v_doc/features/authentication/login/data/repository/login_repository.dart';
import 'package:v_doc/features/authentication/login/logic/cubit/login_cubit.dart';
import 'package:v_doc/features/authentication/services/auth_service.dart';
import 'package:v_doc/features/authentication/signup/data/repositories/signup_repository.dart';
import 'package:v_doc/features/authentication/signup/logic/cubit/signup_cubit.dart';
import 'package:v_doc/features/doctors/controllers/doctors/doctor_bloc.dart';
import 'package:v_doc/features/doctors/domain/datasources/remote/doctor_remote_source.dart';
import 'package:v_doc/features/doctors/domain/repositories/doctor_repo.dart';

final sl = GetIt.instance;

Future<void> initializeDependence() async {
  // api service
  sl.registerLazySingleton<AppChopperClient>(() => AppChopperClient());

  sl.registerLazySingleton<AuthChopperService>(
    () => sl<AppChopperClient>().getChopperService<AuthChopperService>(),
  );

  // login
  sl.registerLazySingleton(() => LoginRepository(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  // sginUp
  sl.registerLazySingleton(() => SignUpRepository(sl()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl()));

  sl.registerLazySingleton<DoctorsChopperService>(
    () => sl<AppChopperClient>().getChopperService<DoctorsChopperService>(),
  );
  sl.registerLazySingleton(() => DoctorRepo(doctorRemoteSource: sl()));
  sl.registerFactory(() => DoctorBloc(sl()));
}
