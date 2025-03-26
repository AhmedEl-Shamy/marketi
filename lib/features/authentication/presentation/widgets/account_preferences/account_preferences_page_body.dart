import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_constants.dart';
import '../../../../../core/utlis/app_text_styles.dart';
import '../custom_simple_app_bar.dart';
import 'account_details_form_widget.dart';

class AccountPreferencesPageBody extends StatelessWidget {
  const AccountPreferencesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          CustomSimpleAppBar(
            pageTitle: "Account Preferences",
          ),
          Text(
            "Account Details",
            style: AppTextStyles.kStyleSB20,
          ),
          AccountDetailsFormWidget(),
        ],
      ),
    );
  }
}