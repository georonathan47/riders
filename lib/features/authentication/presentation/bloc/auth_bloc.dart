import 'package:riders/core/user/domain/usecases/retrieve.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../../core/user/domain/entities/user.dart';
import '../../../../core/user/domain/usecases/login.dart';
import '../../../../core/user/domain/usecases/logout.dart';

class AuthenticationBloc {
  AuthenticationBloc({
    required this.loginUser,
    required this.logoutUser,
    required this.retrieveUser,
  });

  final LoginUser loginUser;
  final LogoutUser logoutUser;
  final RetrieveUser retrieveUser;

  /// Login User
  Future<String> login(User request) async {
    final result = await loginUser(ObjectParams(request));
    return result.fold(
      (failure) => failure.message,
      (success) => success.message!,
    );
  }

  /// Logout User
  Future<String?> logout() async {
    final result = await logoutUser(ObjectParams(await retrieve()));
    return result.fold(
      (failure) => failure.message,
      (success) => '',
    );
  }

  /// Retrieve User
  Future<User> retrieve() async {
    final result = await retrieveUser(NoParams());
    return result.fold(
      (failure) => User.initial(),
      (success) => success,
    );
  }
}
