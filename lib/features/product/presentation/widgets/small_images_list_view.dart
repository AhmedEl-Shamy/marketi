import 'package:flutter/material.dart';

import '../../domain/entities/product_entity.dart';
import 'small_image_item.dart';

class SmallImagesListView extends StatelessWidget {
  const SmallImagesListView({
    super.key,
    required this.product,
    required this.onTap,
  });

  final ProductEntity product;
  final void Function(int index) onTap;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () => onTap(index),
            child: SmallImageItem(
              imageURL: product.images[index],
            ),
          ),
        ),
        itemCount: product.images.length,
      ),
    );
  }
}