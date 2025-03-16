import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';

class DiscountBadgeWidget extends StatelessWidget {
  const DiscountBadgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: DiscountWidgetClipper(),
      child: Container(
        width: 80,
        height: 25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.kLightBlue700.withValues(alpha: 0.7),
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(5),
          // ),
        ),
        child: Text(
          '20% OFF',
          style: AppTextStyles.kStyleM12.copyWith(
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
    );
  }
}

class DiscountWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(5, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
