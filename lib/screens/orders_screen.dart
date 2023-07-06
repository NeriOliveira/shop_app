import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/order_list.dart';
import 'package:shop_app/widgets/order.dart';
import '../widgets/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OrderList orders = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Pedidos'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (ctx, i) => OrderWidget(
        order: orders.items[i],
        ),
      ),
    );
  }
}
