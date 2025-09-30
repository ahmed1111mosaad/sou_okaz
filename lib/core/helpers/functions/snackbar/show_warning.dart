import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void showWarning(
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
    icon: Icons.warning_amber_rounded,
    iconSize: 45,
    secondaryColor: Colors.orange.shade700,
    primaryColor: const Color(0xFFFFF4E5), // أصفر فاتح
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .08,
    displaySideBar: false,
  ).show(context);
}
