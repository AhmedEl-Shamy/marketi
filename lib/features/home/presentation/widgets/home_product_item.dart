import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'home_product_item_details.dart';

class HomeProductItem extends StatelessWidget {
  const HomeProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      // height: 200,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          AppConstants.kBorderCircularRadius,
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            color: AppColors.kDarkLightBlue100,
          ),
        ],
      ),
      child: HomeProductItemDetails(),
    );
  }
}
