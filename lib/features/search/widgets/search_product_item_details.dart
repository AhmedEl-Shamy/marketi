import 'package:flutter/material.dart';

import '../../home/presentation/widgets/price_rating_widget.dart';
import '../../../core/utlis/app_colors.dart';
import '../../../core/utlis/app_text_styles.dart';
import '../../../core/widgets/custom_outlined_button.dart';
import 'search_product_item_deliver_time_widget.dart';
import '../../../core/widgets/product_item_title_widget.dart';

class SearchProductItemDetails extends StatelessWidget {
  const SearchProductItemDetails({
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
        SearchProductItemDliverTimeWidget(),
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
