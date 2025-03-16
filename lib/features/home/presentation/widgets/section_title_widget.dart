import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class SectionTitleWidget extends StatelessWidget {
  const SectionTitleWidget({
    super.key,
    required this.viewAllOnTap,
    required this.sectionTitle,
  });
  final void Function() viewAllOnTap;
  final String sectionTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionTitle,
          style: AppTextStyles.kStyleM20,
        ),
        InkWell(
          onTap: viewAllOnTap,
          child: Text(
            'View All',
            style: AppTextStyles.kStyleM16.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        ),
      ],
    );
  }
}
