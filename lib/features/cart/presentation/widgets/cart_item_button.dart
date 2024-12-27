import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';

class CartItemButton extends StatelessWidget {
  const CartItemButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });
  final Icon icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      style: IconButton.styleFrom(
        foregroundColor: AppColors.kDarkLightBlue100,
        backgroundColor: AppColors.kLightBlue900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            AppConstants.kBorderCircularRadius,
          ),
        ),
      ),
    );
  }
}