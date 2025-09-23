import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SouOkazAnimation extends StatelessWidget {
  const SouOkazAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff0f2733),
      child: Column(
        children: [
          Expanded(
            flex: 20,
            child: RiveAnimation.asset(
              'assets/rive_assets/spt_-_splash_dark_mode.riv',
            ),
          ),
        ],
      ),
    );
  }
}
