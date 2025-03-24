import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_text_styles.dart';
import '../../../../../core/widgets/custom_buttons/custom_back_button.dart';

class CustomSimpleAppBar extends StatelessWidget {
  const CustomSimpleAppBar({
    super.key,
    required this.pageTitle,
  });
  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(),
        SizedBox(
          width: 8,
        ),
        Text(
          pageTitle,
          style: AppTextStyles.kStyleM16.copyWith(
            color: AppColors.kNavy,
          ),
        ),
      ],
    );
  }
}
