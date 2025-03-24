import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../domain/entities/product_entity.dart';

class ProductDetailsDescription extends StatefulWidget {
  const ProductDetailsDescription({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  State<ProductDetailsDescription> createState() =>
      _ProductDetailsDescriptionState();
}

class _ProductDetailsDescriptionState extends State<ProductDetailsDescription> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Description', style: AppTextStyles.kStyleM16),
        Text(
          maxLines: (isExpanded) ? null : 6,
          widget.product.description,
          overflow: (isExpanded) ? TextOverflow.visible : TextOverflow.ellipsis,
          style: AppTextStyles.kStyleR12.copyWith(
            color: AppColors.kDarkBlue900,
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            (isExpanded) ? 'See Less' : 'See More',
            style: AppTextStyles.kStyleR12.copyWith(
                color: AppColors.kDarkLightBlue100,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.kDarkLightBlue100),
          ),
        )
      ],
    );
  }
}
