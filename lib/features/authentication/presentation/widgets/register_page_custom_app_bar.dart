import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/widgets/custom_back_button.dart';

class RegisterPageCustomAppBar extends StatelessWidget {
  const RegisterPageCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Image.asset(
            AppAssets.kImagesLogoSplashScreen,
            width: 190,
            fit: BoxFit.scaleDown,
          ),
        ),
        CustomBackButton(),
      ],
    );
  }
}
