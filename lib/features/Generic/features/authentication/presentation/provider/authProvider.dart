import 'package:flutter/material.dart';

import '../../data/models/UserModel.dart';

class AuthProvider extends ChangeNotifier {
  String? accessToken;
  String? refreshToken;
  User? riderModel;
  int? loginResponseID;
  LoginResponseModel? responseModel;
  saveAccessToken(String? token) {
    accessToken = token;
    notifyListeners();
  }

  saveRefreshToken(String? token) {
    refreshToken = token;
    notifyListeners();
  }

  saveLoginResponseID(int? id) {
    loginResponseID = id;
    notifyListeners();
  }

  saveLoginResponse(LoginResponseModel loginResponseModel) async {
    responseModel = loginResponseModel;
    print('Rider Model From Provider: ${loginResponseModel.toJson()}');
    notifyListeners();
  }

  saveRiderDetails(User rider) async {
    riderModel = rider;
    print('Rider Model From Provider: ${rider.toJson()}');
    notifyListeners();
  }
}
