import 'package:flutter/material.dart';
import 'package:marketi/features/home/presentation/widgets/all_categories_brands_grid_view.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_back_button.dart';
import '../../../../core/widgets/custom_icon_button.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../../core/widgets/custom_page_widget.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Categories',
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
                'All Categories',
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