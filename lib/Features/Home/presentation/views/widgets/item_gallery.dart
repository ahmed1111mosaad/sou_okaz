import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class ItemGallery extends StatelessWidget {
  const ItemGallery({
    super.key,
    required this.image,
    required this.isSelected,
  });
  final String image;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 65,
      decoration: BoxDecoration(
          color: Color(0xFFF8F9FA),
          borderRadius: BorderRadius.circular(12.0),
          border: Border.all(
            color: isSelected ? Colors.orange : Colors.transparent,
            width: 1.5
          )),
      child: Image.asset(
        image,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
