import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/widgets/custom_icon_button.dart';

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
        CustomIconButton(
          icon: SvgPicture.asset(
            AppAssets.kImagesArrowBack,
          ),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
      ],
    );
  }
}