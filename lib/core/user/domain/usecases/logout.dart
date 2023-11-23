import 'package:dartz/dartz.dart';

import '../../../error/failures.dart';
import '../../../usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class LogoutUser implements UseCase<void, ObjectParams<User>> {
  /// Constructor
  LogoutUser(this.repository);

  /// Repository
  final UserRepository repository;

  @override
  Future<Either<Failure, void>> call(ObjectParams<User> params) {
    return repository.logout(params.value);
  }
}
