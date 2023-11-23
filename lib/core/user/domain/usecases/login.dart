import 'package:dartz/dartz.dart';

import '../../../error/failures.dart';
import '../../../usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class LoginUser extends UseCase<User, ObjectParams<User>> {
  LoginUser(this.repository);
  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(ObjectParams<User> params) async {
    return repository.login(params.value);
  }
}
