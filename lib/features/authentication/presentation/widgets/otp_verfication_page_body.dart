import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/features/authentication/presentation/widgets/otp_form_widget.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';
import 'forgot_password_custom_app_bar.dart';

class OtpVerficationPageBody extends StatelessWidget {
  const OtpVerficationPageBody({
    super.key,
    required this.email,
    required this.verifyType,
  });
  final String email;
  final String verifyType;
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
            pageTitle: 'Verify Code',
          ),
          SizedBox(
            height: 22,
          ),
          SvgPicture.asset(
            AppAssets.kImagesIllustrationVerificationCodeWithEmail,
          ),
          SizedBox(
            width: 285,
            child: Text.rich(
              TextSpan(
                text: 'Please enter the 6 digit code\n',
                children: [
                  TextSpan(text: 'send to: '),
                  TextSpan(
                    text: email,
                    style: TextStyle(
                      color: AppColors.kDarkLightBlue100,
                    ),
                  ),
                ],
              ),
              style: AppTextStyles.kStyleM16.copyWith(
                color: AppColors.kNavy,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          OtpFormWidget(
            email: email,
            verifyType: verifyType,
          ),
        ],
      ),
    );
  }
}
