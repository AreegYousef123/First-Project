import 'package:flutter/cupertino.dart';
import 'package:untitled2/Models/ProductsModel.dart';
import 'package:untitled2/Services/ProductsService.dart';

class ProductsProvider extends ChangeNotifier {
  ProductsModel? productsModel;

  Future<void> fetchProducts() async {
    productsModel = await Productservice.get();
    notifyListeners();
  }
}