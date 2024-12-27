import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/widgets/discount_badge_widget.dart';
import '../../../../core/widgets/product_item_image_widget.dart';
import 'cart_item_details.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          height: 135,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              AppConstants.kBorderCircularRadius,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                offset: Offset(0, 0),
                color: AppColors.kDarkLightBlue100,
              ),
            ],
          ),
          child: SizedBox(
            height: 135,
            child: Row(
              spacing: 5,
              children: [
                ProductItemImage(),
                Expanded(
                  child: CartItemDetails(),
                ),
              ],
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppConstants.kBorderCircularRadius),
          ),
          child: DiscountBadgeWidget(),
        )
      ],
    );
  }
}