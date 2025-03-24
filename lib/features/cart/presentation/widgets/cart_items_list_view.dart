import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_constants.dart';

import '../../../../core/widgets/custom_page_widget/custom_page_item.dart';
import 'cart_item.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: 15,
          (context, index) => Padding(
            padding:
                const EdgeInsets.only(bottom: AppConstants.kMainPagePadding),
            child: CartItem(),
          ),
        ),
      ),
    );
  }
}
