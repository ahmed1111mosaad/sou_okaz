import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class IconHeart extends StatefulWidget {
  const IconHeart({
    super.key,
  });

  @override
  State<IconHeart> createState() => _IconHeartState();
}

class _IconHeartState extends State<IconHeart> {
  bool isFavourite = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isFavourite = !isFavourite;
        setState(() {});
      },
      child: CircleAvatar(
          radius: MediaQuery.of(context).size.width * 0.04,
          backgroundColor: Colors.grey.shade100,
          child: Image.asset(
            Assets.assetsImagesHeart,
            color: isFavourite ? Colors.red : null,
          )),
    );
  }
}
