import 'package:dartz/dartz.dart';
import 'package:riders/core/user/domain/entities/user.dart';

import '../../../error/failures.dart';

abstract class UserRepository {
  /// Get current user from DB
  Future<Either<Failure, User>> retrieve();

  /// Login User
  Future<Either<Failure, User>> login(User user);

  /// Logout User
  Future<Either<Failure, User>> logout(User user);
}
