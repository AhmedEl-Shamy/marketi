import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../domain/entities/onboarding_page_entity.dart';
import 'onboarding_page_view_indicator.dart';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem({
    super.key,
    required this.data,
    required this.itemIndex,
    required this.length,
    required this.pageController,
  });

  final OnboardingPageEntity data;
  final PageController pageController;
  final int itemIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        SvgPicture.asset(data.image),
        SizedBox(
          height: 40,
        ),
        OnboardingPageViewIndicator(
          pageIndex: itemIndex,
          length: length,
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          data.title,
          style: AppTextStyles.kStyleSB20,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 34,
        ),
        Text(
          data.description,
          style: AppTextStyles.kStyleM14,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 34,
        ),
        Spacer(),
        CustomButton(
          onPressed: _onPressed,
          text: (itemIndex != length - 1) ? 'Next' : 'Get Start',
        ),
      ],
    );
  }

  void _onPressed() {
    if (itemIndex != length - 1) {
      pageController.animateToPage(
        itemIndex + 1,
        duration: Duration(milliseconds: 250),
        curve: Curves.linear,
      );
    }
  }
}


