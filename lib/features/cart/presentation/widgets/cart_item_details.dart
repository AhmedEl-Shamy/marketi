import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/product_item_title_widget.dart';
import '../../../home/presentation/widgets/price_rating_widget.dart';
import 'cart_item_button.dart';

class CartItemDetails extends StatelessWidget {
  const CartItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductItemTitleWidget(),
        Text(
          'Number of items',
          style: AppTextStyles.kStyleM12.copyWith(
            color: AppColors.kGreyScale,
          ),
        ),
        PriceRatingWidget(
          style: AppTextStyles.kStyleM14,
        ),
        SizedBox(
          height: 38,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              CartItemButton(
                icon: Icon(
                  Icons.remove,
                ),
                onPressed: () {},
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.kLightBlue900,
                    borderRadius: BorderRadius.circular(
                      AppConstants.kBorderCircularRadius,
                    ),
                  ),
                  child: Text(
                    '3',
                    style: AppTextStyles.kStyleSB14,
                  ),
                ),
              ),
              CartItemButton(
                icon: Icon(
                  Icons.add,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}