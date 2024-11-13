import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Providers/ProductsProvider.dart';
import 'package:untitled2/CustomWidgets/ProductsCustom.dart';

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: Consumer<ProductsProvider>(
        builder: (context, provider, child) {
          return FutureBuilder(
            future: provider.fetchProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text("Error loading products"));
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: provider.productsModel?.products.length ?? 0,
                itemBuilder: (context, index) {
                  var product = provider.productsModel!.products[index];
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(child: Image.network(product["image"], fit: BoxFit.cover)),
                        Padding(padding: EdgeInsets.all(8.0), child: Text(product["name"])),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 8.0), child: Text(product["price"].toString())),
                      ],
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}