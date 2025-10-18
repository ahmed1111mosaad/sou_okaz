import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/app_bar_cart_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/checkout_cart_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_view_item_cart.dart';

class CartScreenBody extends StatelessWidget {
  const CartScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AppBarCartScreen(),
          ListViewItemCart(),
          CheckoutCartScreen()
        ],
      ),
    );
  }
}
