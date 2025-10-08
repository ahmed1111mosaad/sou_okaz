import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_vector.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class CustomListOfVectors extends StatefulWidget {
  const CustomListOfVectors({super.key});

  @override
  State<CustomListOfVectors> createState() => _CustomListOfVectorsState();
}

class _CustomListOfVectorsState extends State<CustomListOfVectors> {
  List<String> images = [
    Assets.assetsImagesNikeVectorOriginal,
    Assets.assetsImagesAddidasVectorOriginal,
    Assets.assetsImagesPumaVectorOriginal,
    Assets.assetsImagesUnderArmourVectorOriginal,
    Assets.assetsImagesConverseVectorOriginal,
  ];
  List<String> titleVector = [
    'Nike',
    'Adidas',
    'PUMA',
    'Amour',
    'Convers',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(images.length, (index) {
        return GestureDetector(
          onTap: () {
            selectedIndex = index;
            setState(() {});
          },
          child: ItemVector(
            image: images[index],
            isActive: selectedIndex == index,
            title: titleVector[index],
          ),
        );
      }),
    );
  }
}
