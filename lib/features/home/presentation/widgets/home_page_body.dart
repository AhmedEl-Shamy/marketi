import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text_field.dart';
import 'best_for_you_section.dart';
import 'brands_section.dart';
import 'buy_again_section.dart';
import 'categories_section.dart';
import 'popular_products_section.dart';
import 'special_offer_widget.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        spacing: 15,
        children: [
          SearchTextField(),
          SpecialOfferWidget(),
          PopularProductsSection(),
          CategoriesSection(),
          BestForYouSection(),
          BrandsSection(),
          BuyAgainSection(),
        ],
      ),
    );
  }
}
