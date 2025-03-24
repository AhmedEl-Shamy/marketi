import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_colors.dart';

class SmallImageItem extends StatelessWidget {
  const SmallImageItem({
    super.key,
    required this.imageURL,
  });
  final String imageURL;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.kLightBlue700.withValues(alpha: 0.7),
            width: 2,
          ),
        ),
        child: FlutterLogo(),
      ),
    );
  }
}
