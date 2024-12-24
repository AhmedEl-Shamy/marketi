import 'package:flutter/material.dart';

import '../utlis/app_text_styles.dart';
import 'is_favorite_widget.dart';

class ProductItemTitleWidget extends StatelessWidget {
  const ProductItemTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Product Name',
          style: AppTextStyles.kStyleM14,
        ),
        IsFavoriteWidget(),
      ],
    );
  }
}

