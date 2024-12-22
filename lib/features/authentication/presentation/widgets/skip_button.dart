import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: OutlinedButton(
        onPressed: () => GoRouter.of(context).pushReplacement(AppRouterConfig.kMainAppRoute),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.kDarkLightBlue100,
          padding: EdgeInsets.zero,
          side: BorderSide(
            // color: AppColors.kLightBlue700.withOpacity(0.7),
            color: AppColors.kLightBlue700.withAlpha((255*0.7).round()),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.kBorderCircularRadius,
            ),
          ),
        ),
        child: Text(
          'Skip',
          style: AppTextStyles.kStyleSB16.copyWith(
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
    );
  }
}