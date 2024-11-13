import 'package:flutter/cupertino.dart';
import 'package:untitled2/Services/LoginService.dart';


class SignupProvider extends ChangeNotifier {
  Future<void> signup(String name, String email, int password, int phone) async {
    await LoginService.signup(name, email, password, phone);
    notifyListeners();
  }
}