import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';
import 'forgot_pass_form_widget.dart';
import 'forgot_password_custom_app_bar.dart';

class ForgotPassPageBody extends StatelessWidget {
  const ForgotPassPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        spacing: 22,
        children: [
          CustomSimpleAppBar(
            pageTitle: 'Forgot Password',
          ),
          SizedBox(
            height: 22,
          ),
          SvgPicture.asset(
            AppAssets.kImagesIllustrationForgotPasswordWithEmail,
          ),
          SizedBox(
            width: 285,
            child: Text(
              'Please enter your email address to receive a verification code',
              style: AppTextStyles.kStyleM16.copyWith(
                color: AppColors.kNavy,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ForgotPassFormWidget(),
        ],
      ),
    );
  }
}
