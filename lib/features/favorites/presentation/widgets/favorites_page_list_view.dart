import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_page_item.dart';
import '../../../../core/widgets/product_item_widget.dart';

class FavoritesPageListView extends StatelessWidget {
  const FavoritesPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 15,
              (context, index) => ProductItem(),
            ),
          ),
        );
  }
}
