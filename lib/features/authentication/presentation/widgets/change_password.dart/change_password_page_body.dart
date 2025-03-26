import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_constants.dart';
import '../custom_simple_app_bar.dart';
import 'change_password_form_widget.dart';

class ChangePasswordPageBody extends StatelessWidget {
  const ChangePasswordPageBody({super.key});

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
            pageTitle: "Change Password",
          ),
          ChangePassFormWidget(),
        ],
      ),
    );
  }
}