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
            OnboardingBackgroundImage(image: Assets.assetsImagesGreenShoes),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: OnboardingItemText(
                title: S.of(context).firstPageOnboardingTitle,
                title1: S.of(context).firstPageOnboardingTitle1,
                subTitle: S.of(context).firstPageOnboardingSubtitle,
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
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: OnboardingItemText(
                title: S.of(context).secondPageOnboardingTitle,
                title1: S.of(context).secondPageOnboardingTitle1,
                subTitle: S.of(context).secondPageOnboardingSubtitle,
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
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: OnboardingItemText(
                title: S.of(context).thirdPageOnboardingTitle,
                title1: S.of(context).thirdPageOnboardingTitle1,
                subTitle: S.of(context).thirdPageOnboardingSubtitle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
