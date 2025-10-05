import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/main.dart';

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
        flagsButtonMargin: EdgeInsets.all(
          responsiveFontSize(context, 0.016, 0),
        ),
        searchFieldTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: responsiveFontSize(context, 0, 0.047),
        ),
        flagsButtonPadding: EdgeInsets.only(right: isArabic() ? 8.0 : 0.0),

        validator: validator,
        onChanged: onChanged,
        textAlign: isArabic() ? TextAlign.right : TextAlign.left,
        cursorColor: Colors.blue,
        cursorHeight: 24,
        dropdownIconPosition: IconPosition.trailing,
        dropdownIcon: Icon(
          Icons.expand_more,
          size: responsiveFontSize(context, 0, 0.05),
        ),
        
        pickerDialogStyle: PickerDialogStyle(
          searchFieldTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: responsiveFontSize(context, 0, 0.05),
          ),
          
          searchFieldCursorColor: Colors.blue,
          countryNameStyle: TextStyle(
            fontSize: responsiveFontSize(context, 0, 0.04),
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.surfaceBright,
          ),
          listTileDivider: SizedBox(),
          backgroundColor: Theme.of(context).colorScheme.surface,
          searchFieldInputDecoration: InputDecoration(
            counterStyle: TextStyle(color: Colors.black.withAlpha(160)),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: const Color.fromARGB(255, 29, 144, 144),
                width: 2,
              ),
            ),
            errorStyle: TextStyle(
              fontSize: responsiveFontSize(context, 0, 0.031),
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            labelText: 'Search Country',
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: responsiveFontSize(context, 0, 0.07),
            ),
            prefixIconColor: Colors.grey,
            labelStyle: TextStyle(
              color: Colors.grey,
              fontSize: responsiveFontSize(context, 0, 0.04),
            ),
          ),
          countryCodeStyle: TextStyle(
            color: Theme.of(context).colorScheme.surfaceContainer,
            fontSize: responsiveFontSize(context, 0, 0.04),
          ),
        ),

        dropdownDecoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50.0),
          shape: BoxShape.circle,
        ),
        initialCountryCode: 'EG',
        dropdownTextStyle: TextStyle(
          fontSize: responsiveFontSize(context, 0, 0.05),
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: responsiveFontSize(context, 0.0019, 0),
            horizontal: 8
          ),
          filled: true,
          fillColor: Theme.of(context).colorScheme.secondary,
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
            color: Theme.of(context).colorScheme.error,
            fontSize: responsiveFontSize(context, 0, 0.032),
            fontWeight: FontWeight.w500,
          ),
        ),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: 15,
        ),
      ),
    );
  }
}
