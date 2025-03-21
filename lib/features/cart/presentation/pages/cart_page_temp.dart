import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/widgets/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';
import '../widgets/cart_checkout_widget.dart';
import '../widgets/cart_items_list_view.dart';

class CartPageTemp extends StatelessWidget {
  const CartPageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBarTitle: 'Cart',
      leading: CustomBackButton(),
      trailing: UserAvatarWidget(
        user: context.read<LogInCubit>().user,
        onPressed: () => Scaffold.of(context).openDrawer(),
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
