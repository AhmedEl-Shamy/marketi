import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_constants.dart';
import 'log_in_form_widget.dart';
import 'skip_button.dart';

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
        ],
      ),
    );
  }
}