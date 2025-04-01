import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_constants.dart';
import '../../../../../core/utlis/app_text_styles.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key, this.skipToRoute});
  final String? skipToRoute;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: OutlinedButton(
        onPressed: () => _onPressed(context),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.kDarkLightBlue100,
          padding: EdgeInsets.zero,
          side: BorderSide(
            color: AppColors.kLightBlue700.withValues(alpha: 255 * 0.7),
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

  void _onPressed(BuildContext context) {
    if (skipToRoute != null) {
      GoRouter.of(context).go(skipToRoute!);
    } else {
      GoRouter.of(context).pop();
    }
  }
}
