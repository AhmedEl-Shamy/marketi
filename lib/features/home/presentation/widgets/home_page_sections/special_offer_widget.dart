import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_widget/custom_page_item.dart';

import '../../../../../core/utlis/app_assets.dart';

class SpecialOfferWidget extends StatelessWidget {
  const SpecialOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.kImagesOffer1,
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
