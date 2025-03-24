import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_buttons/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_page_widget/custom_page_widget.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_buttons/custom_cart_icon_button.dart';
import '../../../../core/widgets/custom_page_widget/custom_page_item.dart';
import '../../../../core/widgets/products_grid_view.dart';

class BestForYouPage extends StatelessWidget {
  const BestForYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Best for you',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomCartIconButton(),
        pageItems: [
          CustomPageItem(
            sliver: SliverToBoxAdapter(
              child: Text(
                'Recomended Products',
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
