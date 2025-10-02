
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void showSuccess(
  BuildContext context, {
  required String title,
  required String description,
}) {
  return MotionToast(
    title: Text(
      title,
      style: TextStyle(color: Color(0xFF0D47A1), fontSize: 18),
    ),
    animationCurve: Curves.easeInOut,
    icon: Icons.check_circle,
    iconSize: 45,
    secondaryColor: Color(0xFFFFB300),
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .09,
    description: Text(
      description,
      style: TextStyle(color: Color(0xFF6E6E6E), fontSize: 13),
    ),
    primaryColor: const Color(0xFFE8F1FB),
    // primaryColor: Colors.teal.shade50,
    displaySideBar: false,
  ).show(context);
}
