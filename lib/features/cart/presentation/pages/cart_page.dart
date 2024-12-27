import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';

import '../widgets/cart_checkout_widget.dart';
import '../widgets/cart_page_body.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      body: CartPageBody(),
      appBarTitle: 'Cart',
      leading: UserAvatarWidget(),
      centerTitle: true,
      bottomPageWidget: CartCheckoutWidget(),
    );
  }
}