import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/details_screen.dart';
import 'package:sou_okaz/Features/best_selling_products/presentation/views/widgets/item_best_seller.dart';
import 'package:sou_okaz/core/helpers/functions/navigator_with_fade_animation.dart';

class SliverGridItemBestSeller extends StatelessWidget {
  const SliverGridItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 18,
            childAspectRatio: .75,
            crossAxisSpacing: 15,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                navigatorWithFadeAnimation(context, DetailsScreen());
              },
              child: ItemBestSeller());
        });
  }
}
