import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_back_button.dart';

class ForgotPassCustomAppBar extends StatelessWidget {
  const ForgotPassCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomBackButton(),
        SizedBox(
          width: 8,
        ),
        Text(
          'Forgot Password',
          style: AppTextStyles.kStyleM16.copyWith(
            color: AppColors.kNavy,
          ),
        ),
      ],
    );
  }
}
