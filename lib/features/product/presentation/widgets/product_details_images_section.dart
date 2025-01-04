import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../domain/entities/product_entity.dart';
import 'images_indicator.dart';
import 'small_images_list_view.dart';

class ProductDetailsImagesSection extends StatefulWidget {
  const ProductDetailsImagesSection({
    super.key,
    required this.product,
  });

  final ProductEntity product;

  @override
  State<ProductDetailsImagesSection> createState() =>
      _ProductDetailsImagesSectionState();
}

class _ProductDetailsImagesSectionState
    extends State<ProductDetailsImagesSection> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: AppColors.kDarkBlue900,
                width: double.infinity,
                height: 230,
                child: FlutterLogo(),
              ),
              ImageSlidingIndicator(
                product: widget.product,
                currentIndex: currentIndex,
              ),
              SmallImagesListView(
                product: widget.product,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}