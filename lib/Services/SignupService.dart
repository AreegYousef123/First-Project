import 'package:dio/dio.dart';
import 'package:untitled2/Models/Signup_Model.dart';

class SignupService
{
   static Dio dio = Dio();
   static Future<void>PostData({required String name , required int password , required String email ,required int phone})async
    {
      await dio.post("http://student.valuxapps.com/api/register" , data: {"name" : name , "password" : password , "email" : email , "phone" : phone});
    }

}