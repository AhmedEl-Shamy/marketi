import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

import '../../../../core/utlis/app_router_config.dart';
import 'home_page_section.dart';
import 'popular_products_list_view.dart';

class PopularProductsSection extends StatelessWidget {
  const PopularProductsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: HomePageSection(
          sectionTitle: 'Popular Products',
          viewAllOnTap: () => _onTap(context),
          child: SizedBox(
            height: 210,
            child: PopularProductsListView(),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    GoRouter.of(context).push(
      AppRouterConfig.kPopularProductsRoute,
    );
  }
}
