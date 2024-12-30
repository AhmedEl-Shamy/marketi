import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

import '../../../../core/utlis/app_router_config.dart';
import 'brands_grid_view.dart';
import 'home_page_section.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: HomePageSection(
          sectionTitle: 'Brands',
          viewAllOnTap: () => _onTap(context),
          child: BrandsGridView(),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    GoRouter.of(context).push(
      AppRouterConfig.kBrandsRoute,
    );
  }
}
