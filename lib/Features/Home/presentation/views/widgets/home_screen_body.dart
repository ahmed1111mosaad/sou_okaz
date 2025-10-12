import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/Auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_app_bar_home_screen.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/custom_list_of_vectors.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/item_product.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_view_item.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/list_view_item_best_seller.dart';
import 'package:sou_okaz/Features/Home/presentation/views/widgets/text_popular_shoes.dart';
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
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .015)),
            SliverToBoxAdapter(child: CustomAppBarHomeScreen(greeting: greeting)),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .02)),
            SliverToBoxAdapter(
              child: CustomTextFormField(
                isPassword: false,
                obscureText: false,
                isSearchField: true,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .03)),
            SliverToBoxAdapter(child: CustomListOfVectors()),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .03)),
            SliverToBoxAdapter(child: TextPopularShoes()),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .02)),
            SliverFillRemaining(child: ListViewItemBestSeller()),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .015)),
            SliverToBoxAdapter(child: Align(alignment: Alignment.centerLeft, child: Text('All products'))),
            SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height * .015)),
            SliverFillRemaining(child: ListViewItem())
          ],
        ),
      ),
    );
  }
}
