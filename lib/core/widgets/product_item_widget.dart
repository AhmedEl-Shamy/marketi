import 'package:flutter/material.dart';

import 'discount_badge_widget.dart';
import 'product_item_details.dart';
import 'product_item_image_widget.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
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
                        child: ProductItemDetails(),
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
