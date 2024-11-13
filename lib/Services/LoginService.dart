import 'package:dio/dio.dart';
import 'package:untitled2/Models/LoginModel.dart';

class LoginService {
  static Dio dio = Dio();
  static Future<LoginpModel> login(String email, int password) async {
    Response response = await dio.post("http://student.valuxapps.com/api/login", data: {
      "email": email,
      "password": password,
    });
    return LoginpModel.FromJson(response.data);
  }

  static Future<void> signup(String name, String email, int password, int phone) async {
    await dio.post("http://student.valuxapps.com/api/register", data: {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
    });
  }
}