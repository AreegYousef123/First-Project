import 'package:flutter/material.dart';
import 'package:untitled2/Screens/DetailsScreen.dart';
 //My Second commit
class Productswidget extends StatelessWidget {
  final String productimage;
  final String productname;
  final String productprice;

  Productswidget({
    required this.productimage,
    required this.productname,
    required this.productprice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Productsdetails(
              productimage: productimage,
              productname: productname,
              productprice: productprice,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Image.network(productimage, fit: BoxFit.cover)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(productname),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(productprice)),
          ],
        ),
      ),
    );
  }
}
