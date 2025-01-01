import 'package:flutter/material.dart';

import '../../../core/widgets/custom_page_item.dart';
import 'search_product_item.dart';

class SearchResultSection extends StatelessWidget {
  const SearchResultSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverList.builder(
        itemCount: 30,
        itemBuilder: (context, index) {
          return SearchProductItem();
        },
      ),
    );
  }
}