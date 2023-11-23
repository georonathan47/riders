import 'package:get_it/get_it.dart';
import 'package:riders/features/authentication/presentation/bloc/auth_bloc.dart';

void initAuth() {
  final sl = GetIt.I;

  sl.registerFactory(
    () => AuthenticationBloc(
      loginUser: sl(),
      logoutUser: sl(),
      retrieveUser: sl(),
    ),
  );
}
