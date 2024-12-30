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
      dimension: 42,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
        style: IconButton.styleFrom(
          foregroundColor: AppColors.kDarkBlue900,
          backgroundColor: Colors.transparent,
          side: BorderSide(
            width: 2,
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
    );
  }
}
