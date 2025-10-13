import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_price.dart';

class ListItemSize extends StatefulWidget {
  const ListItemSize({
    super.key,
  });

  @override
  State<ListItemSize> createState() => _ListItemSizeState();
}

class _ListItemSizeState extends State<ListItemSize> {
  int selectedindex = 0;
  final List<String> textSize = [
    'UK 3',
    'UK 4',
    'UK 5',
    'UK 6',
    'UK 7',
    'UK 8',
    'UK 9',
    'UK 10',
    'US 5',
    'US 6',
    'US 7',
    'US 8',
    'US 9',
    'US 10',
    'US 11',
    'EU 36',
    'EU 37',
    'EU 38',
    'EU 39',
    'EU 40',
    'EU 41',
    'EU 42',
    'EU 43',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.053,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  selectedindex = index;
                  setState(() {});
                },
                child: ItemPrice(
                  isSelected: selectedindex == index,
                  text: textSize[index],
                ));
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 8,
            );
          },
          itemCount: textSize.length),
    );
  }
}
