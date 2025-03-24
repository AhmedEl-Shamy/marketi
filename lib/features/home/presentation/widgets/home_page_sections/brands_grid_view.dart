import 'package:flutter/material.dart';

import '../../../../../core/widgets/category_brand_item.dart';

class BrandsGridView extends StatelessWidget {
  const BrandsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: List.generate(
        3,
        (index) => FittedBox(
          fit: BoxFit.scaleDown,
          child: CategoryBrandItem(
            name: 'Brand',
          ),
        ),
      ),
    );
  }
}
