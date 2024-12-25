import 'package:flutter/material.dart';

import 'home_page_section.dart';
import 'home_product_item.dart';

class PopularProductsSection extends StatelessWidget {
  const PopularProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomePageSection(
      sectionTitle: 'Popular Products',
      viewAllOnTap: () {},
      child: SizedBox(
        height: 210,
        child: ListView.builder(
          padding: EdgeInsets.only(left: 5),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 15, top: 5, bottom: 5),
            child: HomeProductItem(),
          ),
        ),
      ),
    );
  }
}