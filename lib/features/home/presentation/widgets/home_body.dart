import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/custom_page_body_widget.dart';
import 'best_for_you_section.dart';
import 'brands_section.dart';
import 'buy_again_section.dart';
import 'categories_section.dart';
import 'popular_products_section.dart';
import 'special_offer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageBodyWidget(
      body: Column(
        spacing: 15,
        children: [
          SearchTextField(),
          SpecialOfferWidget(),
          PopularProductsSection(),
          CategoriesSection(),
          BestForYouSection(),
          BrandsSection(),
          BuyAgainSection(),
          SizedBox()
        ],
      ),
    );
  }
}
