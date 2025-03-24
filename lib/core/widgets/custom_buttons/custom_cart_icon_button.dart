import 'package:flutter/material.dart';

import 'custom_icon_button.dart';

class CustomCartIconButton extends StatelessWidget {
  const CustomCartIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomIconButton(
      icon: Icon(
        Icons.shopping_cart_outlined,
      ),
      onPressed: () {},
    );
  }
}
