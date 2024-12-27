import 'package:flutter/material.dart';

import '../../../../core/widgets/product_item_widget.dart';

class FavoritesPageListView extends StatelessWidget {
  const FavoritesPageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => ProductItem(),
      itemCount: 8,
    );
  }
}
