import 'package:flutter/material.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';

class InActiveItemVector extends StatelessWidget {
  const InActiveItemVector({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Container(
        width: responsivePaddingWithWidth(context, 0.13),
        height: responsivePaddingWithHeight(context, 0.06),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(52)),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}
