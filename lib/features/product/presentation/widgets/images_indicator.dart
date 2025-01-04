import 'package:flutter/material.dart';

import '../../domain/entities/product_entity.dart';
import 'image_idicator_item.dart';

class ImageSlidingIndicator extends StatelessWidget {
  const ImageSlidingIndicator({
    super.key,
    required this.product,
    required this.currentIndex,
  });

  final ProductEntity product;
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ImageIndicatorItem(
          isActive: index == currentIndex,
        ),
        itemCount: product.images.length,
      ),
    );
  }
}