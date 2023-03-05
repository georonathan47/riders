import 'package:http/http.dart' as http;

import '../../main.dart';
import '../utils/appConfig.dart';

class ApiService {
  Future<http.Response?> logout(String refreshToken) async {
    final config = await AppConfig.forEnvironment(envVar);

    var logoutResponse = await http.post(
      Uri.parse(config.logoutUrl!),
      body: {"refresh": refreshToken},
    );
    print('Response status: ${logoutResponse.body}');
    return logoutResponse;
  }

  Future<http.Response?> login(String username, String password) async {
    final config = await AppConfig.forEnvironment(envVar);

    var loginResponse = await http.post(
      Uri.parse(config.loginUrl!),
      body: {
        'username': username,
        'password': password,
      },
    );
    print('Response status: ${loginResponse.body}');

    return loginResponse;
  }
}
