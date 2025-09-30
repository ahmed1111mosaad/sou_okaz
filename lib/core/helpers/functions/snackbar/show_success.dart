
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
      style: TextStyle(color: Color(0xFF2C2C2C), fontSize: 18),
    ),
    animationCurve: Curves.easeInOut,
    icon: Icons.check_circle,
    iconSize: 45,
    secondaryColor: const Color.fromARGB(255, 255, 111, 0),
    width: MediaQuery.of(context).size.width * .9,
    height: MediaQuery.of(context).size.height * .08,
    description: Text(
      description,
      style: TextStyle(color: Color(0xFF6E6E6E), fontSize: 13),
    ),
    primaryColor: const Color.fromARGB(255, 248, 232, 255),
    // primaryColor: Colors.teal.shade50,
    displaySideBar: false,
  ).show(context);
}
