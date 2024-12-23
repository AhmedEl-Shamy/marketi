import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/product_item_rating_widget.dart';

class PriceRatingWidget extends StatelessWidget {
  const PriceRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '799 EGP',
          style: AppTextStyles.kStyleM12,
        ),
        ProductItemRatingWidget()
      ],
    );
  }
}