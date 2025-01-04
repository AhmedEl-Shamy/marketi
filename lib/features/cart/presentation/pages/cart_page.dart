import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';
import 'package:marketi/features/cart/presentation/widgets/cart_items_list_view.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../widgets/cart_checkout_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBarTitle: 'Cart',
      leading: UserAvatarWidget(
        onPressed: Scaffold.of(context).openDrawer,
      ),
      centerTitle: true,
      bottomPageWidget: CartCheckoutWidget(),
      pageItems: [
        CustomPageItem(
          sliver: SliverToBoxAdapter(
            child: Text(
              'Proucts on Cart',
              style: AppTextStyles.kStyleSB20,
            ),
          ),
        ),
        CartItemsListView(),
      ],
    );
  }
}
