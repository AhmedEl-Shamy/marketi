import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_constants.dart';

import 'onboarding_page_view.dart';

class OnboardingPageBody extends StatelessWidget {
  const OnboardingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: OnboardingPageView(),
    );
  }
}
