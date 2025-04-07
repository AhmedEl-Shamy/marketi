import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/features/authentication/presentation/widgets/custom_simple_app_bar.dart';

import '../../../../../core/utlis/app_assets.dart';
import '../../../../../core/utlis/app_constants.dart';
import 'reset_pass_form_widget.dart';

class ResetPasswordPageBody extends StatelessWidget {
  const ResetPasswordPageBody({super.key, required this.accessToken});
  final String accessToken;
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
            pageTitle: "Create New Password",
          ),
          SizedBox(
            height: 22,
          ),
          SvgPicture.asset(
            AppAssets.kImagesIllustrationCreateNewPassword,
          ),
          ResetPassFormWidget(
            accessToken: accessToken,
          ),
        ],
      ),
    );
  }
}
