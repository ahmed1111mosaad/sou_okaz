import 'package:flutter/material.dart';

class OnboardingImageShoes extends StatelessWidget {
  const OnboardingImageShoes({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 5.6,
      left: 25,
      right: 0.0,
      child: Image.asset(image),
    );
  }
}
