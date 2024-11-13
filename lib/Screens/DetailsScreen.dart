import 'package:flutter/material.dart';

class Productsdetails extends StatelessWidget {
  final String productimage;
  final String productname;
  final String productprice;

  Productsdetails({
    required this.productimage,
    required this.productname,
    required this.productprice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Details"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(productimage),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                productname,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                productprice,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
