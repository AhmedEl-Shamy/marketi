import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/core/widgets/custom_button.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_constants.dart';
import 'log_in_form_widget.dart';
import 'log_in_options_widget.dart';
import 'register_page_navigation.dart';
import 'skip_button.dart';
import 'third_party_auth_widget.dart';

class LogInPageBody extends StatelessWidget {
  const LogInPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainHorizontalPadding,
      ),
      child: Column(
        children: [
          Row(
            children: [SkipButton()],
          ),
          Image.asset(
            AppAssets.kAppLogo,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            height: 32,
          ),
          LogInFormWidget(),
          LogInOptionsWidget(),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'Log In',
            onPressed: () {},
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Or Continue With',
            style: AppTextStyles.kStyleR12,
          ),
          SizedBox(
            height: 16,
          ),
          ThirdPartyAuthWidget(),
          SizedBox(
            height: 14,
          ),
          RegisterPageNavigation()
        ],
      ),
    );
  }
}
