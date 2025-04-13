import 'package:flutter/material.dart';
import 'package:marketi/core/entities/product_entity.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class ProductDetailsRatingWidget extends StatelessWidget {
  const ProductDetailsRatingWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(
            5,
            (index) => _buildStar(index),
          ),
        ),
        Text(
          '(${product.rating})',
          style: AppTextStyles.kStyleM14,
        ),
      ],
    );
  }

  Icon _buildStar(int index) {
    double value = product.rating - index;
    if (value > 0 && value > 1) {
      return Icon(
        Icons.star,
        color: AppColors.kDarkBlue900,
      );
    } else if (value > 0 && value < 1) {
      return Icon(
        Icons.star_half,
        color: AppColors.kDarkBlue900,
      );
    } else {
      return Icon(
        Icons.star_outline,
        color: AppColors.kDarkBlue900,
      );
    }
  }
}
