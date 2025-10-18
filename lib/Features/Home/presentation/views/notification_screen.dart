import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/notification_item.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/core/utils/custom_arrow_back_app_bar.dart';
import 'package:sou_okaz/generated/l10n.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsivePaddingWithWidth(context, 0.04),
          vertical: responsivePaddingWithHeight(context, 0.02),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Row(
              children: [
                CustomArrowBackAppBar(isLogin: true,),
                Spacer(),
                Text(S.current.notificationsTitle,
                    style: AppTextStyles.medium16.copyWith(
                        fontSize: responsiveFontSize(context, 0.0, .05))),
                Spacer(),
                Text(
                  'Clear All',
                  style: AppTextStyles.medium16
                      .copyWith(color: AppColors.primaryColor),
                )
              ],
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
            ),
            SliverToBoxAdapter(
                child: Text(
              S.current.notificationsToday,
              style: AppTextStyles.medium18.copyWith(
                fontSize: responsiveFontSize(context, 0, 0.05),
                color: Colors.black,
              ),
            )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            NotificationItem()
          ],
        ),
      ),
    );
  }
}
