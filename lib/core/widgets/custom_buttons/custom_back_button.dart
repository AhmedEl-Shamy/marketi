import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../utlis/app_assets.dart';
import 'custom_icon_button.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: SvgPicture.asset(
        AppAssets.kImagesArrowBack,
      ),
      onPressed: () {
        GoRouter.of(context).pop();
      },
    );
  }
}
