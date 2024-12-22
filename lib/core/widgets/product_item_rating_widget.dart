import 'package:flutter/material.dart';

import '../utlis/app_text_styles.dart';

class ProductItemRatingWidget extends StatelessWidget {
  const ProductItemRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 1,
      children: [
        Icon(Icons.star_border_rounded),
        Text(
          '4.5',
          style: AppTextStyles.kStyleM12,
        ),
      ],
    );
  }
}