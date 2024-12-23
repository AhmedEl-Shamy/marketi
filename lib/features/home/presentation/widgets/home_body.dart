import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/category_brand_item.dart';
import 'home_product_item.dart';
import 'special_offer_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        SearchTextField(),
        SpecialOfferWidget(),
        HomeProductItem(),
        CategoryBrandItem(),
      ],
    );
  }
}



