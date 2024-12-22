import 'package:flutter/material.dart';

import '../utlis/app_text_styles.dart';
import 'custom_outlined_button.dart';
import 'price_rating_widget.dart';
import 'product_item_image.dart';

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        ProductItemImage(),
        PriceRatingWidget(),
        Text(
          'Product Name',
          style: AppTextStyles.kStyleM12,
        ),
        CustomOutlinedButton(
          onPressed: () {},
          text: 'Add',
        ),
      ],
    );
  }
}



