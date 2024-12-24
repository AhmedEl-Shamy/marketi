import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/utlis/app_assets.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_constants.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/core/widgets/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_button.dart';
import 'package:marketi/features/authentication/presentation/widgets/form_field_widget.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ForgotPassPageBody(),
    );
  }
}

class ForgotPassPageBody extends StatelessWidget {
  const ForgotPassPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 44,
          ),
          SvgPicture.asset(
            AppAssets.kImagesIllustrationForgotPasswordWithEmail,
          ),
          SizedBox(
            height: 22,
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
          SizedBox(
            height: 22,
          ),
          FormFieldWidget(
            isPassword: false,
            label: 'Email',
            hint: 'you@gmail.com',
            inputType: TextInputType.emailAddress,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Send Email',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
