import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_best_seller_home_screen.dart';

class ListViewItemBestSeller extends StatelessWidget {
  const ListViewItemBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.29,
      child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * .05,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return ItemBestSellerHomeScreen();
          }),
    );
  }
}
