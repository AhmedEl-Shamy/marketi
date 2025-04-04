import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_text_styles.dart';
import 'remember_me_check_box.dart';

class LogInOptionsWidget extends StatelessWidget {
  const LogInOptionsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RememberMeCheckBox(),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouterConfig.kForgotPassPageRoute);
          },
          child: Text(
            'Forgot Password?',
            style: AppTextStyles.kStyleM12.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        )
      ],
    );
  }
}
