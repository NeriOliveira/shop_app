import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  // final Product product; Quando não usa rotas, enviando direto o parâmetro(argumento) para o objeto 

  const ProductDetailScreen({super.key, /*required this.product*/});

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  
  }
}