import 'dart:io';

import 'package:http/http.dart';

class ApiService {
  Future<Response?> getData(String url,
      {Map<String, String>? queryParameters}) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
    };
    try {
      var uri = Uri.parse(url);
      Response response = await get(uri, headers: headers);
      return response;
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return null;
    }
  }

  Future<Response?> getDataWithAuth({String? url, String? auth}) async {
    var uri = Uri.parse(url!);

    Map<String, String> headers = {HttpHeaders.authorizationHeader: auth!};
    try {
      Response response = await get(uri, headers: headers);
      return response;
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return null;
    }
  }

  Future<Response?> postData({String? url, String? body}) async {
    Map<String, String> headers = {
      'Content-type': 'application/json',
    };
    var uri = Uri.parse(url!);
    try {
      Response response = await post(uri, headers: headers, body: body);
      return response;
    } catch (e, s) {
      print('Network Service Error: ${e.toString()}\n StackTrace: $s');
      return null;
    }
  }

  Future<Response?> putData({String? url, String? body}) async {
    // final config = await AppConfig.forEnvironment(envVar);
    Map<String, String> headers = {
      'Content-type': 'application/json',
    };
    var uri = Uri.parse(url!);
    try {
      Response response = await put(uri, headers: headers, body: body);
      return response;
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return null;
    }
  }

  Future<Response?> postDataWithAuth(
      {String? url, String? body, String? auth}) async {
    var uri = Uri.parse(url!);
    Map<String, String> headers = {
      'Content-type': 'application/json',
      HttpHeaders.authorizationHeader: auth!
    };
    try {
      Response response = await post(uri, headers: headers, body: body);
      return response;
    } catch (e) {
      print('Network Service Error: ${e.toString()}');
      return null;
    }
  }
}
