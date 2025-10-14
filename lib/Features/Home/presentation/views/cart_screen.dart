import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/cart_screen_body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CartScreenBody(),
    );
  }
}
