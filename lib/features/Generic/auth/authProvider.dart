import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? accessToken;
  saveAccessToken(String? token) {
    accessToken = token;
    notifyListeners();
  }
}
