import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_cart.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';

class ListViewItemCart extends StatelessWidget {
  const ListViewItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.only(
          left: responsivePaddingWithWidth(context, 0.04),
          right: responsivePaddingWithWidth(context, 0.04),
          top: responsivePaddingWithHeight(context, 0.02),
        ),
        child: ListView.separated(
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10,
              );
            },
            itemBuilder: (context, index) {
              return ItemCart();
            }),
      ),
    );
  }
}
