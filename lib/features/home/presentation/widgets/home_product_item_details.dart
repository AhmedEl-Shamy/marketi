import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_outlined_button.dart';
import 'price_rating_widget.dart';
import 'home_product_item_image.dart';

class HomeProductItemDetails extends StatelessWidget {
  const HomeProductItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 5,
      children: [
        HomeProductItemImage(),
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



