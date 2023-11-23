import 'package:get_it/get_it.dart';

import 'data/datasources/user_local_database.dart';
import 'data/datasources/user_remote_database.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/user_repository.dart';
import 'domain/usecases/login.dart';
import 'domain/usecases/logout.dart';
import 'domain/usecases/retrieve.dart';

void initUser() {
  final sl = GetIt.I;

  sl
    // usecases
    ..registerLazySingleton(() => LoginUser(sl()))
    ..registerLazySingleton(() => LogoutUser(sl()))
    ..registerLazySingleton(() => RetrieveUser(sl()))
    // database
    ..registerLazySingleton<UserRemoteDatabase>((UserRemoteDatabaseImpl.new))
    // repository
    ..registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(
        networkInfo: sl(),
        localDatabase: sl(),
        remoteDatabase: sl(),
      ),
    )
    ..registerLazySingleton<UserLocalDatabase>(() => UserLocalDatabaseImpl(sl()));
}
