import 'package:http/http.dart' as http;

class ApiService {
  logout(String refreshToken) async {
    var logoutResponse = await http.post(
      Uri.parse('http://146.190.46.188/logout'),
      body: {"refresh": refreshToken},
    );
    print('Response status: ${logoutResponse.statusCode}');
    return logoutResponse;
  }

  login(String username, String password) async {
    var loginResponse = await http.post(
      Uri.parse('http://146.190.46.188/login/'),
      body: {
        'username': username,
        'password': password,
      },
    );
    print('Response status: ${loginResponse.statusCode}');

    return loginResponse;
  }
}
