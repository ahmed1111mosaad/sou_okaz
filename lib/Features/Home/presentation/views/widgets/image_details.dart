import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Center(
                child: Image.asset(
                  Assets.assetsImagesNikeDetails,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: -MediaQuery.of(context).size.height * 0.035,
                child: Image.asset(
                  Assets.assetsImagesCircle,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
