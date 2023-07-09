import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:task/features/userapp/data/datasources/remotedata.dart';
import 'package:task/features/userapp/data/repositories/user_repository.dart';
import 'package:task/features/userapp/domain/repositories/user_services.dart';
import 'package:task/features/userapp/presentation/bloc/userData/user_data_bloc.dart';

import 'features/userapp/presentation/bloc/user/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => UserBloc(userServices: sl()));
  sl.registerFactory(() => UserDataBloc(sl()));
  sl.registerLazySingleton(() => http.Client());

  sl.registerLazySingleton<RemoteUserServices>(
      () => RemoteUser(sl<http.Client>()));
  sl.registerLazySingleton<UserRepository>(() => sl());
  sl.registerLazySingleton<UserServices>(() => UserRepository(sl()));
}
