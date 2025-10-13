
import 'package:flutter/material.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';

class CustomSliderPrice extends StatefulWidget {
  const CustomSliderPrice({
    super.key,
    required this.currentPrice,
  });
  final ValueChanged<double> currentPrice;
  @override
  State<CustomSliderPrice> createState() => _CustomSliderPriceState();
}

class _CustomSliderPriceState extends State<CustomSliderPrice> {
  double price = 50;

  @override
  Widget build(BuildContext context) {
    return Slider(
        activeColor: AppColors.primaryColor,
        inactiveColor: Colors.grey,
        min: 20,
        max: 1000,
        value: price,
        divisions: 200,
        label: "\$${price.toStringAsFixed(0)}",
        onChanged: (value) {
          price = value;
          widget.currentPrice(value);
          setState(() {});
        });
  }
}
