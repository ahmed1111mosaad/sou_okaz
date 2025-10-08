import 'package:flutter/material.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/get_data_locally.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/helpers/functions/trim_text.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  String greeting = ''; // متغير هيخزن نص التحية الحالي

  @override
  void initState() {
    super.initState();

    _updateGreeting(); // 🔹 أول حاجة: احسب التحية الحالية فورًا لما الودجت تشتغل

    _scheduleNextUpdate(); // 🔹 بعد كده: جهز تايمر لتحديث التحية لما الوقت يتغير
  }

  // 🔸 الوظيفة دي بتحدّد التحية المناسبة حسب الساعة الحالية
  void _updateGreeting() {
    final now = DateTime.now(); // الوقت الحالي
    final hour = now.hour; // نجيب الساعة فقط (0 إلى 23)

    if (hour >= 5 && hour < 12) {
      greeting = 'Good morning 🌅'; // من 5 إلى 12 → صباح الخير
    } else if (hour >= 12 && hour < 17) {
      greeting = 'Good afternoon ☀️'; // من 12 إلى 5 → مساء الخير (العصر)
    } else {
      greeting = 'Good evening 🌙'; // من 5 مساء لحد الفجر → مساء الخير
    }

    setState(() {}); // 🔹 نحدّث الواجهة عشان تظهر التحية الجديدة
  }

  // 🔸 الوظيفة دي بتحسب إمتى التحديث الجاي المفروض يحصل
  void _scheduleNextUpdate() {
    final now = DateTime.now(); // الوقت الحالي
    DateTime nextUpdate; // هنسجل فيه الوقت اللي المفروض نحدث بعده

    // 🔹 نحدد الوقت القادم اللي هيتغير فيه الجزء من اليوم
    if (now.hour < 5) {
      nextUpdate = DateTime(now.year, now.month, now.day, 5); // الساعة 5 صباحًا
    } else if (now.hour < 12) {
      nextUpdate =
          DateTime(now.year, now.month, now.day, 12); // الساعة 12 الظهر
    } else if (now.hour < 17) {
      nextUpdate = DateTime(now.year, now.month, now.day, 17); // الساعة 5 العصر
    } else {
      // لو الوقت بعد 5 العصر → التحديث الجاي 5 صباحًا تاني يوم
      nextUpdate = DateTime(now.year, now.month, now.day + 1, 5);
    }

    // 🔹 نحسب الفرق بين الوقت الحالي ووقت التحديث الجاي
    final duration = nextUpdate.difference(now);

    // 🔹 ننتظر لحد ما الوقت ده ييجي، وبعدها نعمل التحديث
    Future.delayed(duration, () {
      _updateGreeting(); // حدّث التحية
      _scheduleNextUpdate(); // وجدول التحديث اللي بعده
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsivePaddingWithWidth(context, 0.05),
          vertical: responsivePaddingWithWidth(context, 0.02),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  Assets.assetsImagesDiceFout,
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.058,
                ),
                Spacer(),
                Row(
                  children: [
                    ClipOval(
                      clipBehavior: Clip.antiAlias,
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.height * 0.030,
                        backgroundColor: AppColors.lightPrimaryColor,
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              right: 0.0,
                              top: 0.0,
                              child: Image.asset(
                                Assets.assetsImagesAvatar,
                                height:
                                    MediaQuery.of(context).size.height * 0.91,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          greeting,
                          style: AppTextStyles.regular12,
                        ),
                        Text(
                          trimText(getUserDataLocally().name),
                          style: AppTextStyles.medium14,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Image.asset(
                  Assets.assetsImagesNotification,
                  width: MediaQuery.of(context).size.width * 0.13,
                  height: MediaQuery.of(context).size.height * 0.058,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
