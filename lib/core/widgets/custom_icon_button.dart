import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 40,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        style: IconButton.styleFrom(
          foregroundColor: AppColors.kDarkBlue900,
          backgroundColor: Colors.white,
          side: BorderSide(
            width: 1,
            color: AppColors.kLightBlue700.withOpacity(0.7),
          ),
        ),
      ),
    );
  }
}
