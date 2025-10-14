import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_gallery.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class ListOfItemGallery extends StatefulWidget {
  const ListOfItemGallery({
    super.key,
  });

  @override
  State<ListOfItemGallery> createState() => _ListOfItemGalleryState();
}

class _ListOfItemGalleryState extends State<ListOfItemGallery> {
  final List<String> images = [
    Assets.assetsImagesNikeAirMaxPink,
    Assets.assetsImagesNikeAirMaxOrangeWhite,
    Assets.assetsImagesNikeAirForceOrange,
  ];
  int selectedIndex = 6;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: GestureDetector(
            onTap: () {
              selectedIndex = index;
              setState(() {});
            },
            child: ItemGallery(
              image: images[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }),
    );
  }
}
