import 'package:dartz/dartz.dart';
import 'package:riders/core/error/failures.dart';
import 'package:riders/core/user/domain/entities/user.dart';
import 'package:riders/core/user/domain/repositories/user_repository.dart';

import '../../../error/exception.dart';
import '../../../platform/network_info.dart';
import '../../../utils/logger.dart';
import '../datasources/user_local_database.dart';
import '../datasources/user_remote_database.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({
    required this.localDatabase,
    required this.networkInfo,
    required this.remoteDatabase,
  });

  /// Network information
  final NetworkInfo networkInfo;

  /// Local database
  final UserLocalDatabase localDatabase;

  /// Remote database
  final UserRemoteDatabase remoteDatabase;

  @override
  Future<Either<Failure, User>> login(User user) async {
    try {
      await networkInfo.hasInternet();
      final result = await remoteDatabase.login(user);
      await localDatabase.create(result);
      return Right(result);
    } on DeviceException catch (error, stack) {
      logger.e(stack);
      return Left(Failure(error.message));
    }
  }

  @override
  Future<Either<Failure, void>> logout(User user) async {
    try {
      await networkInfo.hasInternet();
      await remoteDatabase.login(user);
      await localDatabase.delete(user);
      return Right(User.initial().copyWith(message: 'Logout successful!'));
    } on DeviceException catch (error, stack) {
      logger.e(stack);
      return Left(Failure(error.message));
    }
  }

  @override
  Future<Either<Failure, User>> retrieve() async {
    try {
      final result = await localDatabase.retrieve();
      return Right(result);
    } on DeviceException catch (error) {
      return Left(Failure(error.message));
    }
  }
}
