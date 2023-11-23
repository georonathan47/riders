import 'package:dartz/dartz.dart';


import '../../../error/failures.dart';
import '../../../usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

/// Retrieve user detail
class RetrieveUser implements UseCase<User, NoParams> {
  /// Constructor
  RetrieveUser(this.repository);

  /// Repository
  final UserRepository repository;

  @override
  Future<Either<Failure, User>> call(NoParams params) => repository.retrieve();
}
