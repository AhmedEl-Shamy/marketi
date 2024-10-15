import 'package:flutter/material.dart';

import '../../../../core/utlis/app_constants.dart';
import 'register_form_widget.dart';
import 'register_page_custom_app_bar.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainHorizontalPadding,
      ),
      child: Column(
        children: [
          RegisterPageCustomAppBar(),
          RegisterFormWidget(),
        ],
      ),
    );
  }
}


