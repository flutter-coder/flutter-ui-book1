import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_detail.dart';
import 'package:flutter_shoppingcart/components/shoppingcart_header.dart';
import 'package:flutter_shoppingcart/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildShoppingCartAppBar(),
      body: Column(
        children: [
          ShoppingCartHeader(),
          ShoppingCartDetail(),
        ],
      ),
    );
  }

  AppBar _buildShoppingCartAppBar() {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
        const SizedBox(width: 16),
      ],
      elevation: 0.0,
    );
  }
}
