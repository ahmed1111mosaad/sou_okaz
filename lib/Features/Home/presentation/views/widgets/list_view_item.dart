import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_product.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return ItemProduct();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height:15);
      },
    );
  }
}
