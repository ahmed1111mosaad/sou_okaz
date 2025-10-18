import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class ImageItemCart extends StatelessWidget {
  const ImageItemCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      height: MediaQuery.of(context).size.height * 0.1,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Image.asset(
          Assets.assetsImagesNikeAirMaxPink,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
