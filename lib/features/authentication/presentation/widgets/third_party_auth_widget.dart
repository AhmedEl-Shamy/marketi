import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/widgets/custom_icon_button.dart';

class ThirdPartyAuthWidget extends StatelessWidget {
  const ThirdPartyAuthWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            icon: SvgPicture.asset(
              AppAssets.kImagesGoogleLogo,
            ),
            onPressed: () {},
          ),
          CustomIconButton(
            icon: SvgPicture.asset(
              AppAssets.kImagesAppleLogo,
            ),
            onPressed: () {},
          ),
          CustomIconButton(
            icon: SvgPicture.asset(
              AppAssets.kImagesFacebookLogo,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}