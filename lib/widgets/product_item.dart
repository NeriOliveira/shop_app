import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    Key ? key,
    required Product this.product,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: (){}, 
            ),
          title: Text(product.title, textAlign: TextAlign.center,),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){}, 
            ),
        ),
        ),
    );
  }
}