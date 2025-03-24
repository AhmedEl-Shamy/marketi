import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_buttons/custom_button.dart';

class CartCheckoutDetailsWidget extends StatelessWidget {
  const CartCheckoutDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal (5 items)',
              style: AppTextStyles.kStyleM14,
            ),
            Text(
              '1000 EGP',
              style: AppTextStyles.kStyleM14,
            ),
          ],
        ),
        CustomButton(
          text: 'Checkout',
          onPressed: () {},
        ),
      ],
    );
  }
}
