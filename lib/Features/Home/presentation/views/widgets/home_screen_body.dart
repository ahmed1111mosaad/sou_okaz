import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_app_bar_home_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_list_of_vectors.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/icon_heart.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_best_seller_home_screen.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/core/helpers/functions/responsive.dart';
import 'package:sou_okaz/core/utils/app_colors.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

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

    _updateGreeting();
    _scheduleNextUpdate();
  }

  void _updateGreeting() {
    final now = DateTime.now();
    final hour = now.hour;

    if (hour >= 5 && hour < 12) {
      greeting = S.current.goodMorning;
    } else if (hour >= 12 && hour < 17) {
      greeting = S.current.goodAfternoon;
    } else {
      greeting = S.current.goodEvening;
    }

    setState(() {});
  }

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
            SizedBox(
              height: MediaQuery.of(context).size.height * .015,
            ),
            CustomAppBarHomeScreen(greeting: greeting),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            CustomTextFormField(
              isPassword: false,
              obscureText: false,
              isSearchField: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            CustomListOfVectors(),
            SizedBox(
              height: MediaQuery.of(context).size.height * .03,
            ),
            Row(
              children: [
                Text(
                  S.current.homePopularShoes,
                  style: AppTextStyles.medium16,
                ),
                Spacer(),
                Text(
                  'see all',
                  style: AppTextStyles.regular14.copyWith(
                      color: AppColors.lightPrimaryColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * .05,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CardBestSellerHomeScreen();
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Align(alignment: Alignment.centerLeft, child: Text('All products')),
            SizedBox(
              height: MediaQuery.of(context).size.height * .015,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.height * 0.023,
                  )),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.current.homeNikeAirJordan,
                          style: AppTextStyles.medium20.copyWith(
                            fontSize: MediaQuery.of(context).size.width * 0.055,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text(
                          r"$" "493.00",
                          style: AppTextStyles.medium16
                              .copyWith(
                                  fontSize:
                                      responsiveFontSize(context, 0.0, 0.04))
                              .copyWith(color: Color(0xFFFF5F57)),
                        )
                      ],
                    ),
                    Spacer(),
                    Image.asset(Assets.assetsImagesNikeAirJordan),
                    Align(alignment: Alignment.topRight, child: IconHeart())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
