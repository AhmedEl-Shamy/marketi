import 'package:flutter/material.dart';

import '../../../core/utlis/app_colors.dart';
import '../../../core/utlis/app_text_styles.dart';

class SearchProductItemDliverTimeWidget extends StatelessWidget {
  const SearchProductItemDliverTimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Icon(
          Icons.access_time,
          color: AppColors.kDarkLightBlue100,
          size: 22,
        ),
        Text(
          'Deliver in 5 days',
          style: AppTextStyles.kStyleM12.copyWith(
            color: AppColors.kDarkBlue700,
          ),
        ),
      ],
    );
  }
}