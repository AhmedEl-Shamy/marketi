import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

import 'categories_grid_view.dart';
import 'home_page_section.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: HomePageSection(
          sectionTitle: 'Categories',
          viewAllOnTap: () {},
          child: CategoriesGridView(),
        ),
      ),
    );
  }
}
