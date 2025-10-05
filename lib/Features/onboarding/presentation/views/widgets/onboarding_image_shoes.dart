import 'package:flutter/material.dart';

class OnboardingImageShoes extends StatelessWidget {
  const OnboardingImageShoes({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.width * .3,
      left: 25,
      right: 25.0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .6,  
        child: Image.asset(image),
      ),
    );
  }
}
