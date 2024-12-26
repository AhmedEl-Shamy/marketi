import 'package:flutter/material.dart';

import '../../../../core/widgets/category_brand_item.dart';
import 'home_page_section.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return HomePageSection(
      sectionTitle: 'Brands',
      viewAllOnTap: () {},
      child: GridView.count(
        crossAxisCount: 3,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        children: List.generate(
          3,
          (index) => FittedBox(
            fit: BoxFit.scaleDown,
            child: CategoryBrandItem(),
          ),
        ),
      ),
    );
  }
}