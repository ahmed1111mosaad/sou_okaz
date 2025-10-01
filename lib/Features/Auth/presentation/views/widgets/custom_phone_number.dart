import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({super.key, this.onChanged, this.validator});
  final void Function(PhoneNumber phoneNumber)? onChanged;
  final String? Function(PhoneNumber?)? validator;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dialogTheme: DialogThemeData(
          actionsPadding: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
            side: BorderSide(color: Colors.grey, width: 2),
          ),
        ),
      ),
      child: IntlPhoneField(
        searchFieldTextStyle: TextStyle(color: Colors.black),

        validator: validator,
        onChanged: onChanged,
        flagsButtonMargin: EdgeInsets.only(left: 12.0),
        cursorColor: Colors.black,
        dropdownIconPosition: IconPosition.trailing,
        dropdownIcon: Icon(Icons.expand_more),
        pickerDialogStyle: PickerDialogStyle(
          searchFieldCursorColor: Colors.teal,
          countryNameStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),

          listTileDivider: SizedBox(),
          backgroundColor: Color(0xFFF5F5F5),
          searchFieldInputDecoration: InputDecoration(
            counterStyle: TextStyle(color: Colors.black.withAlpha(160)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 29, 144, 144),
                width: 2,
              ),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            labelText: 'Search Country',
            prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
            prefixIconColor: Colors.grey,
            labelStyle: TextStyle(color: Colors.grey),
          ),
          countryCodeStyle: TextStyle(
            color: Colors.black.withAlpha(170),
            fontSize: 13,
          ),
        ),

        dropdownDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          shape: BoxShape.circle,
        ),
        initialCountryCode: 'EG',
        dropdownTextStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 214, 212),
              width: 2,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 214, 212),
              width: 2,
            ),
          ),

          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
