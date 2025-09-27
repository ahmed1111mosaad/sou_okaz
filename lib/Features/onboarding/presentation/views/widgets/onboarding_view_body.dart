import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:sou_okaz/core/app_colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sou_okaz/core/utils/app_text_styles.dart';
import 'package:sou_okaz/generated/l10n.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 9,
          child: OnboardingPageView(pageController: pageController),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    DotsIndicator(
                      position: currentPage.toDouble(),
                      dotsCount: 3,
                      decorator: DotsDecorator(
                        color: AppColors.verylightPrimaryColor,
                        activeColor: AppColors.primaryColor,
                        activeSize: Size(
                          MediaQuery.of(context).size.width * .1,
                          5,
                        ),
                        size: Size(MediaQuery.of(context).size.width * .023, 8),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .42,
                      height: 55,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryColor,
                        ),
                        onPressed: () {
                          if (currentPage < 2) {
                            pageController.animateToPage(
                              currentPage + 1,
                              duration: Duration(milliseconds: 600),
                              curve: Curves.decelerate
                            );
                          }
                        },
                        child: Text(
                          currentPage == 0 || currentPage == 1
                              ? S.of(context).textButtonNext
                              : S.of(context).textButtonGetStarted,
                          style: AppTextStyles.medium18,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
