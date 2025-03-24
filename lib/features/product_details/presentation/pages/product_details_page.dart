import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_buttons/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_buttons/custom_cart_icon_button.dart';
import 'package:marketi/core/widgets/custom_page_widget/custom_page_widget.dart';
import 'package:marketi/features/product_details/domain/entities/product_entity.dart';

import '../widgets/product_details_images_section.dart';
import '../widgets/product_details_info.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Product Details',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomCartIconButton(),
        pageItems: [
          ProductDetailsImagesSection(product: product),
          ProductDetailsInfo(product: product),
        ],
      ),
    );
  }
}
