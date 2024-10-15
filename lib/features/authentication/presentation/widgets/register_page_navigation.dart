import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class RegisterPageNavigation extends StatelessWidget {
  const RegisterPageNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Are you new in Marketi ',
          style: AppTextStyles.kStyleR12,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            'register?',
            style: AppTextStyles.kStyleR12.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        ),
      ],
    );
  }
}