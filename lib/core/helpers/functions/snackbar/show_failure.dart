import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void showFailure(
  BuildContext context, {
  required String title,
  required String description,
}) {
  return MotionToast(
    title: Text(
      title,
      style: TextStyle(
        color: Color(0xFF2C2C2C),
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    ),
    description: Text(
      description,
      style: TextStyle(color: Color(0xFF6E6E6E), fontSize: 13),
    ),
    animationCurve: Curves.easeInOut,
    icon: Icons.error,
    iconSize: 45,
    secondaryColor: Colors.red.shade600,
    primaryColor: const Color(0xFFFFE8E8), // أحمر فاتح
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .08,
    displaySideBar: false,
  ).show(context);
}
