import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';

class CategoryBrandItem extends StatelessWidget {
  const CategoryBrandItem({super.key, this.name});
  final String? name;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 160,
      child: Column(
        spacing: 5,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: AppColors.kLightBlue700.withValues(alpha: 0.7),
                ),
              ),
              child: FlutterLogo(),
            ),
          ),
          if (name != null)
          SizedBox(
            width: double.infinity,
            child: Text(
              name!,
              style: AppTextStyles.kStyleM14,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}