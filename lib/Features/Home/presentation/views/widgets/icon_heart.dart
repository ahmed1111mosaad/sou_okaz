import 'package:flutter/material.dart';

class IconHeart extends StatelessWidget {
  const IconHeart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width * 0.04,
      backgroundColor: Colors.grey.shade100,
      child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline,
              color: Colors.black,
              size: MediaQuery.of(context).size.width * 0.04)),
    );
  }
}
