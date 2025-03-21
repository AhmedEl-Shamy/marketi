import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';

class NotLogedInWidget extends StatelessWidget {
  const NotLogedInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      children: [
        Text(
          "You are not Logged In",
          style: AppTextStyles.kStyleM18.copyWith(
            color: AppColors.kDarkBlue900,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        InkWell(
          onTap: () =>
              GoRouter.of(context).push(AppRouterConfig.kLogInPageRoute),
          child: Text(
            "Log In",
            style: AppTextStyles.kStyleM14.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        ),
        InkWell(
          onTap: () => GoRouter.of(context)
              .pushReplacement(AppRouterConfig.kRegisterPageRoute),
          child: Text(
            "Register",
            style: AppTextStyles.kStyleM14.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        ),
      ],
    );
  }
}
