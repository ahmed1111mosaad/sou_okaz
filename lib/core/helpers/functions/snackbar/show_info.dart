import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

void showInfo(
  BuildContext context, {
  required String title,
  required String description,
}) {
  return MotionToast(
    title: Text(
      title,
      style: TextStyle(color: Color(0xFF2C2C2C), fontSize: 18, fontWeight: FontWeight.w600),
    ),
    description: Text(
      description,
      style: TextStyle(color: Color(0xFF6E6E6E), fontSize: 13),
    ),
    animationCurve: Curves.easeInOut,
    icon: Icons.info_outline,
    iconSize: 45,
    secondaryColor: Colors.blue.shade600,
    primaryColor: const Color(0xFFE8F3FF), // أزرق فاتح
    width: MediaQuery.of(context).size.width * .9,
  height: MediaQuery.of(context).size.height * .09,
    displaySideBar: false,
  ).show(context);
}
