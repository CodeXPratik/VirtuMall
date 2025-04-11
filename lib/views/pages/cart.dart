import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Cart',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
