import 'package:dio/dio.dart';
import 'package:untitled2/Models/ProductsModel.dart';

class Productservice
{
  static Dio dio = Dio();
  static Future<ProductsModel> get() async
  {
    try{
      Response response = await dio.get(
          'https://student.valuxapps.com/api/home'
      );
      if(response.statusCode == 200)
      {
        return ProductsModel.fromJson(response.data);

      }
      else
      {
        throw Exception("Error");
      }
    }
    catch(e)
    {
      print("error $e");
      throw Exception("error $e");
    }
  }
}