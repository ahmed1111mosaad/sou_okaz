import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/active_item_vector.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/in_active_item_vector.dart';

class ItemVector extends StatelessWidget {
  const ItemVector({
    super.key,
    required this.image,
    required this.isActive,
    required this.title,
  });
  final String image;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    if (isActive) {
      return ActiveItemVector(
            image: image,
            title: title,
          );
    } else {
      return InActiveItemVector(image: image);
    }
  }
}
