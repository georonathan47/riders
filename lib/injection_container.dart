import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:riders/features/authentication/auth_injection.dart';

import 'core/platform/launch_info.dart';
import 'core/platform/network_info.dart';
import 'core/user/user_injection.dart';

final sl = GetIt.I;

//? Initialize all injections
void init() {
  /// Core
  initCore();

  /// Features
  initFeatures();

  /// External
  initExternal();
}

//? Add core features injection
void initCore() {
  // User
  initUser();

  sl
    // ..registerLazySingleton<ShareInfo>(ShareInfoImpl.new)
    ..registerLazySingleton<LaunchInfo>(LaunchInfoImpl.new)
    // ..registerLazySingleton<DeviceInfo>(DeviceInfoImpl.new)
    ..registerLazySingleton<NetworkInfo>(NetworkInfoImpl.new);
  // ..registerLazySingleton<GalleryInfo>(() => GalleryInfoImpl(sl()));
}

//? Add features injection
void initFeatures() {
  /// Auth Feature
  initAuth();
}

//? Add external packages injection
void initExternal() {
  sl
    ..registerLazySingleton(Client.new)
    // ..registerLazySingleton(ImagePicker.new)
    ..registerLazySingleton<HiveInterface>(() => Hive);
  // ..registerFactory<FlutterLocalNotificationsPlugin>(FlutterLocalNotificationsPlugin.new);
}
