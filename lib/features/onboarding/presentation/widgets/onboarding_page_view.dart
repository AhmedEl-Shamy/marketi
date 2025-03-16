import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../domain/entities/onboarding_page_entity.dart';
import 'onboarding_page_view_item.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({
    super.key,
  });

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  late PageController pageController;
  final List onboardingScreens = const [
    OnboardingPageEntity(
      title: 'Welcom to Marketi',
      description:
          'Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
      image: AppAssets.kImagesIllustrationOnboarding1,
    ),
    OnboardingPageEntity(
      title: 'Easy to Buy',
      description:
          'Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.',
      image: AppAssets.kImagesIllustrationOnboarding2,
    ),
    OnboardingPageEntity(
      title: 'Wonderful User Experience',
      description:
          'Start exploring now and experience the convenience of online shopping at its best.',
      image: AppAssets.kImagesIllustrationOnboarding3,
    ),
  ];
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onboardingScreens.length,
      itemBuilder: (context, index) => OnboardingPageViewItem(
        itemIndex: index,
        length: onboardingScreens.length,
        data: onboardingScreens[index],
        pageController: pageController,
      ),
    );
  }
}
