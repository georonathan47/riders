import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../../../main.dart';
import '../../../error/exception.dart';
import '../../../services/apiService.dart';
import '../../../utils/appConfig.dart';
import '../../../utils/logger.dart';
import '../../domain/entities/user.dart';

abstract class UserRemoteDatabase {
  Future<User> login(User user);
  Future<void> logout(User user);
}

class UserRemoteDatabaseImpl implements UserRemoteDatabase {
  final networkService = ApiService();

  @override
  Future<User> login(User request) async {
    try {
      final config = await AppConfig.forEnvironment(envVar);
      final jsonBody = jsonEncode({'username': request.username, 'password': request.password});
      final result = await networkService.postData(url: config.loginUrl, body: jsonBody);
      logger.i(result);
      if (result!.statusCode == 200) {
        final initialResponse = jsonDecode(result.body);
        logger.d(initialResponse);
        final userDetails = initialResponse['user']['user'];

        final userInfo = User(
          password: '',
          id: userDetails['id'],
          email: userDetails['email'],
          username: userDetails['username'],
          firstname: userDetails['first_name'],
          accessToken: initialResponse['access'],
          refreshToken: initialResponse['refresh'],
          phoneNumber: userDetails['phone_number'],
          message: 'You have successfully logged in!',
        );
        return userInfo;
      } else {
        final data = jsonDecode(result.body);
        final userInfo = User.initial().copyWith(message: data['detail']);
        return userInfo;
      }
    } on SocketException catch (error) {
      throw DeviceException(error.message);
    } on ClientException catch (clientError) {
      throw DeviceException(clientError.message);
    } on HandshakeException catch (error) {
      throw DeviceException(error.message);
    }
  }

  @override
  Future<void> logout(User user) async {
    try {
      final config = await AppConfig.forEnvironment(envVar);
      final jsonBody = jsonEncode({"refresh": user.refreshToken});

      final result = await networkService.postData(url: config.logoutUrl, body: jsonBody, auth: user.accessToken);
      if (result!.statusCode >= 200 && result.statusCode < 300) {
        return null;
      } else {
        return;
      }
    } on SocketException catch (error) {
      throw DeviceException(error.message);
    } on ClientException catch (clientError) {
      throw DeviceException(clientError.message);
    } on HandshakeException catch (error) {
      throw DeviceException(error.message);
    }
  }
}
