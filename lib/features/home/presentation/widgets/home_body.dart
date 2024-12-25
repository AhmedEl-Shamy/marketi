import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';

import '../../../../core/widgets/custom_page_body_widget.dart';
import 'categories_section.dart';
import 'popular_products_section.dart';
import 'special_offer_widget.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageBodyWidget(
      body: Column(
        spacing: 10,
        children: [
          SearchTextField(),
          SpecialOfferWidget(),
          PopularProductsSection(),
          CategoriesSection(),
        ],
      ),
    );
  }
}
