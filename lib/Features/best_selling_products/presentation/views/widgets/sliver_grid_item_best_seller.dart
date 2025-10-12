import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/best_selling_products/presentation/views/widgets/item_best_seller.dart';

class SliverGridItemBestSeller extends StatelessWidget {
  const SliverGridItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 15,
            childAspectRatio: .75,
            crossAxisSpacing: 15,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ItemBestSeller();
        });
  }
}
