import 'package:flutter/material.dart';

import '../../features/home/presentation/widgets/price_rating_widget.dart';
import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';
import 'custom_outlined_button.dart';
import 'product_item_deliver_time_widget.dart';
import 'product_item_title_widget.dart';

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProductItemTitleWidget(),
        Text(
          'Number of items',
          style: AppTextStyles.kStyleM12.copyWith(
            color: AppColors.kGreyScale,
          ),
        ),
        ProductItemDliverTimeWidget(),
        PriceRatingWidget(
          style: AppTextStyles.kStyleM14,
        ),
        SizedBox(
          height: 38,
          child: CustomOutlinedButton(
            text: 'Add',
            onPressed: () {},
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ],
    );
  }
}