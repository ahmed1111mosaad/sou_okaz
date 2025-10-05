import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/check_mark.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool isAccepted = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      child: Row(
        children: [
          CheckList(
            onChanged: (bool value) {
              isAccepted = value;
              widget.onChanged(isAccepted);
              setState(() {});
            },
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: S.of(context).termsAndCondition1,
                    style: AppTextStyles.regular14.copyWith(
                      fontSize: responsiveFontSize(context, 0, 0.045),
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).termsAndCondition2,
                    style: AppTextStyles.regular16.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: responsiveFontSize(context, 0, 0.05),
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                  TextSpan(
                    text: S.of(context).termsAndCondition3,
                    style: AppTextStyles.regular14.copyWith(
                      fontSize: responsiveFontSize(context, 0, 0.045),
                    ),
                  ),
                  TextSpan(
                    text: S.of(context).termsAndCondition4,
                    style: AppTextStyles.regular16.copyWith(
                      decoration: TextDecoration.underline,
                      fontSize: responsiveFontSize(context, 0, 0.05),
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
