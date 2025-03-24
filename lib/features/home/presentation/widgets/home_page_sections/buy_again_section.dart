import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/widgets/custom_page_widget/custom_page_item.dart';

import '../../../../../core/utlis/app_router_config.dart';
import 'buy_again_list_view.dart';
import '../home_page_section_widget/home_page_section.dart';

class BuyAgainSection extends StatelessWidget {
  const BuyAgainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: HomePageSection(
          sectionTitle: 'Buy Again',
          viewAllOnTap: () => _onTap(context),
          child: SizedBox(
            height: 210,
            child: BuyAgainListView(),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    GoRouter.of(context).push(AppRouterConfig.kBuyAgainRoute);
  }
}
