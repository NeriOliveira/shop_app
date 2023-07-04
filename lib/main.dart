import 'package:flutter/material.dart';
import 'package:shop_app/screens/product_detail_screen.dart';
import 'package:shop_app/screens/products_overview_screen.dart';
import 'package:shop_app/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.purple,
          secondary: Colors.deepOrange,
        ),
        fontFamily: 'Lato',
        // useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: ProductsOverviewScreen(),
      routes: {
        AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailScreen()
      },
    );
  }
}