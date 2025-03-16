import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';

class OnboardingPageViewIndicator extends StatelessWidget {
  const OnboardingPageViewIndicator(
      {super.key, required this.pageIndex, required this.length});
  final int pageIndex;
  final int length;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        length,
        (index) => Padding(
          padding: (index != 0 && index != length - 1)
              ? const EdgeInsets.symmetric(
                  horizontal: 8,
                )
              : EdgeInsets.zero,
          child: Container(
            width: (index == pageIndex) ? 20 : 16,
            height: (index == pageIndex) ? 20 : 16,
            decoration: BoxDecoration(
              color: (index == pageIndex)
                  ? AppColors.kDarkBlue900
                  : AppColors.kLightBlue700,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
