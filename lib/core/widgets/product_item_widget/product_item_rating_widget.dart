import 'package:flutter/material.dart';

class ProductItemRatingWidget extends StatelessWidget {
  const ProductItemRatingWidget({
    super.key,
    required this.style,
  });
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 1,
      children: [
        Icon(Icons.star_border_rounded),
        Text(
          '4.5',
          style: style,
        ),
      ],
    );
  }
}
