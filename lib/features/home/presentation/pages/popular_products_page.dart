import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../../core/widgets/products_grid_view.dart';

class PopularProductsPage extends StatelessWidget {
  const PopularProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Popular Products',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomIconButton(
          icon: Icon(
            Icons.shopping_cart_outlined,
          ),
          onPressed: () {},
        ),
        pageItems: [
          CustomPageItem(
            sliver: SliverToBoxAdapter(
              child: Text(
                'Popular Products',
                style: AppTextStyles.kStyleSB20,
              ),
            ),
          ),
          ProductsGridView(),
        ],
      ),
    );
  }
}
