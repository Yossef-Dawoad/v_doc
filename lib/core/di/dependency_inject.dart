import 'package:get_it/get_it.dart';
import 'package:recipe_hub/core/networking/api_service.dart';
import 'package:recipe_hub/features/login/data/repository/login_repository.dart';
import 'package:recipe_hub/features/login/logic/cubit/login_cubit.dart';
import 'package:recipe_hub/features/signup/data/repositories/sinup_repository.dart';
import 'package:recipe_hub/features/signup/logic/cubit/signup_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDependence() async {
  // api service
  sl.registerLazySingleton<APIService>(() => APIService.create());

  // login
  sl.registerLazySingleton(() => LoginRepository(sl()));
  sl.registerFactory<LoginCubit>(() => LoginCubit(sl()));

  // sginUp
  sl.registerLazySingleton(() => SignUpRepository(sl()));
  sl.registerFactory<SignupCubit>(() => SignupCubit(sl()));
}
