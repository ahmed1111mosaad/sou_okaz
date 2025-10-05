import 'package:flutter/material.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/onboarding_background_image.dart';
import 'package:sou_okaz/Features/onboarding/presentation/views/widgets/onboarding_item_text.dart';
import 'package:sou_okaz/core/assets/assets.dart';
import 'package:sou_okaz/generated/l10n.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: OnboardingBackgroundImage(
                image: Assets.assetsImagesGreenShoes,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                child: OnboardingItemText(
                  title: S.of(context).firstPageOnboardingTitle,
                  title1: S.of(context).firstPageOnboardingTitle1,
                  subTitle: S.of(context).firstPageOnboardingSubtitle,
                  subTitle1: S.current.firstPageOnboardingSubtitle1,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            OnboardingBackgroundImage(
              image: Assets.assetsImagesOnboardingRedShoes,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: OnboardingItemText(
                title: S.of(context).secondPageOnboardingTitle,
                title1: S.of(context).secondPageOnboardingTitle1,
                subTitle: S.of(context).secondPageOnboardingSubtitle,
                subTitle1: S.current.secondPageOnboardingSubtitle1,
              ),
            ),
          ],
        ),
        Column(
          children: [
            OnboardingBackgroundImage(
              image: Assets.assetsImagesOrangeOboardingShoes,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
              ),
              child: OnboardingItemText(
                title: S.of(context).thirdPageOnboardingTitle,
                title1: S.of(context).thirdPageOnboardingTitle1,
                subTitle: S.of(context).thirdPageOnboardingSubtitle,
                subTitle1: S.current.thirdPageOnboardingSubtitle1,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
