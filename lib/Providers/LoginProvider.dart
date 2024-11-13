import 'package:flutter/cupertino.dart';
import 'package:untitled2/Models/LoginModel.dart';
import 'package:untitled2/Services/LoginService.dart';

class LoginProvider extends ChangeNotifier {
  LoginpModel? model;

  Future<void> login(String email, int password) async {
    model = await LoginService.login(email, password);
    notifyListeners();
  }
}