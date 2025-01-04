
import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../domain/entities/product_entity.dart';
import 'add_to_cart_widget.dart';
import 'product_details_description.dart';
import 'product_details_info_header.dart';
import 'product_options_widget.dart';

class ProductDetailsInfo extends StatelessWidget {
  const ProductDetailsInfo({
    super.key,
    required this.product,
  });
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      fillOverscroll: false,
      hasScrollBody: false,
      child: Container(
        padding: EdgeInsets.all(AppConstants.kMainPagePadding),
        width: double.infinity,
        color: AppColors.kLightBlue900,
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ProductDetailsInfoHeader(product: product),
            Text(
              product.name,
              style: AppTextStyles.kStyleM18.copyWith(
                color: AppColors.kDarkBlue900,
              ),
            ),
            ProductDetailsDescription(product: product),
            if (product.options != null) ...[
              for (var option in product.options!)
                ProductOptions(productOptions: option)
            ],
            Spacer(),
            AddToCartWidget(product: product),
          ],
        ),
      ),
    );
  }
}