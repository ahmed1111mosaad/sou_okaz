
import 'package:flutter/material.dart';

AppBar appBarArrowBack(BuildContext context) {
  return AppBar(
    backgroundColor: Color(0xFFF5F5F5),
    
    leading: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Expanded(
        child: Row(
          children: [
            
            SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.arrow_back_ios, size: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
