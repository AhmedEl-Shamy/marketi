import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'cart_items_list_view.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          Text(
            'Proucts on Cart',
            style: AppTextStyles.kStyleM20,
          ),
          CartItemsListView(),
        ],
      ),
    );
  }
}