import 'package:flutter/material.dart';
import 'package:shop_app/data/dummy_data.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/widgets/product_item.dart';

class ProductsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = dummyProducts;
  
  ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          ),
        ),
    );
  }
}