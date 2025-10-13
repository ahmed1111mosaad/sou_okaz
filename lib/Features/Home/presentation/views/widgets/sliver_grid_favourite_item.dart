import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/favourite_item.dart';

class SliverGridFavouriteItem extends StatelessWidget {
  const SliverGridFavouriteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 18,
            childAspectRatio: .71,
            crossAxisSpacing: 15,
            crossAxisCount: 2),
        itemBuilder: (context, index) {
          return FavouriteItem();
        });
  }
}
