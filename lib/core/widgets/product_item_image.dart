import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import 'discount_badge_widget.dart';
import 'is_favorite_widget.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kLightBlue900,
            borderRadius: BorderRadius.circular(5),
          ),
          child: FlutterLogo(),
        ),
        DiscountBadgeWidget(),
        IsFavoriteWidget(),
      ],
    );
  }
}