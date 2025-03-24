import 'package:flutter/material.dart';

import '../../utlis/app_colors.dart';
import '../../utlis/app_text_styles.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.borderRadius,
  });
  final void Function()? onPressed;
  final String text;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.kDarkLightBlue100,
          side: BorderSide(
            color: AppColors.kDarkLightBlue100,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.kStyleM14.copyWith(
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
    );
  }
}
