import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product_list.dart';
import '../widgets/product_grid.dart';

enum FilterOptions{
  Favorite,
  All
}

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context); //Controle GLOBAL do estado FAVORITO

    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
              PopupMenuItem(
                child: Text('Somente Favoritos'),
                value: FilterOptions.Favorite,
                ),
              PopupMenuItem(
              child: Text('Todos'),
              value: FilterOptions.All,
              ),
            ],
            onSelected: (FilterOptions selectedValue){
              if(selectedValue == FilterOptions.Favorite){
                provider.showFavoriteOnly();
              } else {
                provider.showAll();
              }
            },
          ),
        ],
      ),
      body: ProductGrid(),
    );
  }
}