import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_constants.dart';
import 'log_in_form_widget.dart';
import 'register_page_navigation.dart';
import 'skip_button.dart';
import 'third_party_auth_widget.dart';

class LogInPageBody extends StatelessWidget {
  const LogInPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        children: [
          Row(
            children: [SkipButton()],
          ),
          Image.asset(
            AppAssets.kImagesLogoSplashScreen,
            fit: BoxFit.scaleDown,
          ),
          SizedBox(
            height: 32,
          ),
          LogInFormWidget(),
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
