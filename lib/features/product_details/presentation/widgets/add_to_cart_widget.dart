import 'package:flutter/material.dart';
import 'package:marketi/core/entities/product_entity.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_buttons/custom_button.dart';

class AddToCartWidget extends StatelessWidget {
  const AddToCartWidget({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 15,
      children: [
        Text.rich(
          TextSpan(
            text: '${product.price}',
            children: [
              TextSpan(
                text: ' EGP',
                style: AppTextStyles.kStyleR16.copyWith(
                  color: AppColors.kDarkBlue900,
                ),
              ),
            ],
          ),
          style: AppTextStyles.kStyleM20.copyWith(
            color: AppColors.kDarkBlue900,
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Add to Cart',
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
