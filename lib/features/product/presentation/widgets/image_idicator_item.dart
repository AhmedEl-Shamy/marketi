import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';

class ImageIndicatorItem extends StatelessWidget {
  const ImageIndicatorItem({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppConstants.kFastAnimationDuration,
      width: (isActive) ? 40 : 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: (isActive) ? AppColors.kDarkBlue900 : AppColors.kLightBlue700,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}