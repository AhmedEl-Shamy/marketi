import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_constants.dart';

import 'cart_item.dart';

class CartItemsListView extends StatelessWidget {
  const CartItemsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 15,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: AppConstants.kMainPagePadding),
        child: CartItem(),
      ),
    );
  }
}
