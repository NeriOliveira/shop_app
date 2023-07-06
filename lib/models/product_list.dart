import 'package:flutter/material.dart';
import 'package:shop_app/data/dummy_data.dart';
import 'package:shop_app/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;
 
  List<Product> get items => [..._items];
  List<Product> get favoriteItems => _items.where((pdt) => pdt.isFavorite).toList(); //Gerenciamento de estado LOCAL

  void addProduct(Product product){
    _items.add(product);
    notifyListeners(); //Notifica todos os que chamam a Lista de Produto quando outro elemento for adicionado
  }
 

}

/* Controlar a lista de Favoritos de forma GLOBAL: */

/*  bool _showFavoriteOnly = false;
// List<Product> get items => [..._items];
  List<Product> get items { 
      if (_showFavoriteOnly) {
        return _items.where((prod) => prod.isFavorite).toList();
      }
      return [..._items];
    }

  void showFavoriteOnly(){
    _showFavoriteOnly = true;
    notifyListeners();
  }

  void showAll(){
    _showFavoriteOnly = false;
    notifyListeners();
  }
*/