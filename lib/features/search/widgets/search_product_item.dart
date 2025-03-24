import 'package:flutter/material.dart';

import '../../../core/widgets/discount_badge_widget.dart';
import 'search_product_item_details.dart';
import '../../../core/widgets/product_item_widget/product_item_image_widget.dart';

class SearchProductItem extends StatelessWidget {
  const SearchProductItem({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  height: 135,
                  child: Row(
                    spacing: 5,
                    children: [
                      ProductItemImage(),
                      Expanded(
                        child: SearchProductItemDetails(),
                      ),
                    ],
                  ),
                ),
                DiscountBadgeWidget()
              ],
            ),
          ),
          Divider(
            height: 10,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
