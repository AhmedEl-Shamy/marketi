import 'package:flutter/material.dart';

import '../../features/home/presentation/widgets/home_product_item.dart';
import 'custom_page_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverLayoutBuilder(
        builder: (context, constraints) {
          // print((constraints.crossAxisExtent / 160).floor());
          return SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (constraints.crossAxisExtent / 165).floor(),
              // mainAxisExtent: 200,
              childAspectRatio: 160 / 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => LayoutBuilder(
              builder: (context, constraints) {
                // print('width: ${constraints.maxWidth} | height: ${constraints.maxHeight} | A.R: ${constraints.maxWidth/constraints.maxHeight}');
                return HomeProductItem();
              },
            ),
            itemCount: 20,
          );
        },
      ),
    );
  }
}