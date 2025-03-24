import 'package:flutter/material.dart';

import '../home_product_item/home_product_item.dart';

class PopularProductsListView extends StatelessWidget {
  const PopularProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 5),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5),
        child: HomeProductItem(),
      ),
    );
  }
}
