import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_constants.dart';
import 'product_item_details.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      // height: 175,
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
      child: ProductItemDetails(),
    );
  }
}