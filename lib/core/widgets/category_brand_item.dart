import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';

class CategoryBrandItem extends StatelessWidget {
  const CategoryBrandItem({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Container(
          width: 105,
          height: 95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 1,
              color: AppColors.kLightBlue700.withValues(alpha: 0.7),
            ),
          ),
          child: FlutterLogo(),
        ),
        if (name != null)
        SizedBox(
          width: 105,
          child: Text(
            name!,
            style: AppTextStyles.kStyleM14,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}