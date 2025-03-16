import 'package:flutter/material.dart';
import 'package:marketi/features/home/presentation/widgets/all_categories_brands_grid_view.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_cart_icon_button.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../../core/widgets/custom_page_widget.dart';

class BrandsPage extends StatelessWidget {
  const BrandsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Brands',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomCartIconButton(),
        pageItems: [
          CustomPageItem(
            sliver: SliverToBoxAdapter(
              child: Text(
                'All Brands',
                style: AppTextStyles.kStyleSB20,
              ),
            ),
          ),
          AllCategoriesBrandsGridView(),
        ],
      ),
    );
  }
}
