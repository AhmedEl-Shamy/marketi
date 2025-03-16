import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import 'cart_checkout_details_widget.dart';

class CartCheckoutWidget extends StatelessWidget {
  const CartCheckoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.all(AppConstants.kMainPagePadding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 1),
            color: AppColors.kDarkLightBlue100,
          ),
        ],
      ),
      child: CartCheckoutDetailsWidget(),
    );
  }
}
