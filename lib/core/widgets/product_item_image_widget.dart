import 'package:flutter/material.dart';

class ProductItemImage extends StatelessWidget {
  const ProductItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      child: FlutterLogo(),
    );
  }
}
