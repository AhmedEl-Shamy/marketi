import 'package:flutter/material.dart';
import 'package:marketi/core/entities/product_entity.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import 'product_details_rating_widget.dart';

class ProductDetailsInfoHeader extends StatelessWidget {
  const ProductDetailsInfoHeader({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.kDarkLightBlue100,
              width: 2,
            ),
          ),
          child: Text(
            'Free Shipping',
            textAlign: TextAlign.center,
            style: AppTextStyles.kStyleM14.copyWith(
              color: AppColors.kDarkLightBlue100,
            ),
          ),
        ),
        ProductDetailsRatingWidget(product: product),
      ],
    );
  }
}
