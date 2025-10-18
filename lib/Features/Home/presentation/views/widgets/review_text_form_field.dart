import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class ReviewTextFormField extends StatefulWidget {
  const ReviewTextFormField({
    super.key,
    this.onChanged,
    this.validator,
    this.controller,
  });

  final Function(String)? onChanged;

  final String? Function(String?)? validator;

  final TextEditingController? controller;

  @override
  State<ReviewTextFormField> createState() => _ReviewTextFormFieldState();
}

class _ReviewTextFormFieldState extends State<ReviewTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      cursorColor: Theme.of(context).primaryColor,
      cursorHeight: 24,
      style: TextStyle(
        color: Theme.of(context).colorScheme.onSurface,
        fontSize: responsiveFontSize(context, 0, 0.046),
        fontFamily: 'Airbnb Cereal App',
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: AppColors.primaryColor,
            )),
        contentPadding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.02),
        errorStyle: TextStyle(
          color: Theme.of(context).colorScheme.error,
          fontSize: responsiveFontSize(context, 0, 0.031),
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
        // contentPadding: EdgeInsets.symmetric(vertical: 18.0),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 255, 214, 212),
            width: 2,
          ),
        ),
        hint: Text(
          S.current.comment,
          style: AppTextStyles.regular14
              .copyWith(fontSize: responsiveFontSize(context, 0.0, 0.04)),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.02),
          child: CircleAvatar(
              backgroundColor: AppColors.orangeColor,
              radius: MediaQuery.of(context).size.height * 0.029,
              child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    Assets.assetsImagesAvatar,
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: MediaQuery.of(context).size.height * 0.056,
                  ))),
        ),
        hintStyle: AppTextStyles.regular14
            .copyWith(fontSize: responsiveFontSize(context, 0, 0.04)),
      ),
    );
  }
}
