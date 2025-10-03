import 'dart:async';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
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
        searchFieldTextStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
        ),
        flagsButtonPadding: EdgeInsets.only(right: isArabic() ? 8.0 : 0.0),
        validator: validator,
        onChanged: onChanged,
        textAlign: isArabic() ? TextAlign.right : TextAlign.left,
        cursorColor: Colors.blue,
        cursorHeight: 24,
        dropdownIconPosition: IconPosition.trailing,
        dropdownIcon: Icon(Icons.expand_more),
        pickerDialogStyle: PickerDialogStyle(
          searchFieldTextStyle: TextStyle(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 18,
          ),
          searchFieldCursorColor: Colors.blue,
          countryNameStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w500,
            //  color: Colors.orange,
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
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2),
            ),
            labelText: 'Search Country',
            prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass),
            prefixIconColor: Colors.grey,
            labelStyle: TextStyle(color: Colors.grey, fontSize: 16),
          ),
          countryCodeStyle: TextStyle(
            color: Theme.of(context).colorScheme.surfaceContainer,
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
          fontWeight: FontWeight.w400,
          color: Colors.grey,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 16.0),
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
            fontSize: 13,
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
