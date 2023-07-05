import 'package:flutter/material.dart';
import 'package:shop_app/data/dummy_data.dart';
import 'package:shop_app/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;
 
  // List<Product> get items => [..._items];
 
  bool _showFavoriteOnly = false;
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

  void addProduct(Product product){
    _items.add(product);
    notifyListeners(); //Notifica todos os que chamam a Lista de Produto quando outro elemento for adicionado
  }
}