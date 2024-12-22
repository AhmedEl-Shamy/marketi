import 'package:flutter/material.dart';

import '../../../../core/utlis/app_assets.dart';

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              AppAssets.kImagesOffer1,
            ),
            fit: BoxFit.scaleDown),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}