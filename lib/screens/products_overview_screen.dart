import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product_list.dart';
import '../widgets/product_grid.dart';

enum FilterOptions{
  Favorite,
  All
}

class ProductsOverviewScreen extends StatefulWidget {
  ProductsOverviewScreen({super.key});

  @override
  State<ProductsOverviewScreen> createState() => _ProductsOverviewScreenState();
}

class _ProductsOverviewScreenState extends State<ProductsOverviewScreen> {

  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    // final provider = Provider.of<ProductList>(context); //Controle GLOBAL do estado FAVORITO - Usando interface do tipo Statelees

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
              setState(() {
                if(selectedValue == FilterOptions.Favorite){
                  // provider.showFavoriteOnly(); //Controle GLOBAL do estado FAVORITO - Usando interface do tipo Statelees
                  _showFavoriteOnly = true;
                } else {
                  // provider.showAll(); //Controle GLOBAL do estado FAVORITO - Usando interface do tipo Statelees
                  _showFavoriteOnly = false;
                }
              });


            },
          ),
        ],
      ),
      body: ProductGrid(showFavoriteOnly: _showFavoriteOnly,),
    );
  }
}