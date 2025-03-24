import 'package:flutter/material.dart';

import '../../utlis/app_colors.dart';
import '../../utlis/app_constants.dart';
import '../../utlis/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.kDarkLightBlue100,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppConstants.kBorderCircularRadius,
            ),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.kStyleM18,
        ),
      ),
    );
  }
}
