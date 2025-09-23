import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class Nike extends StatelessWidget {
  const Nike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 4,
      left: 0.0,
      right: 0.0,
      child: SvgPicture.asset(
        Assets.assetsImagesNIKE,
        colorFilter: ColorFilter.mode(
          Color.fromARGB(255, 238, 237, 237), // your color
          BlendMode
              .srcIn, // tells Flutter to paint the SVG with this color),
        ),
      ),
    );
  }
}
