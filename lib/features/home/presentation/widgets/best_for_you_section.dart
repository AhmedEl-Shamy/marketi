import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

import '../../../../core/utlis/app_router_config.dart';
import 'best_for_you_list_view.dart';
import 'home_page_section.dart';

class BestForYouSection extends StatelessWidget {
  const BestForYouSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: HomePageSection(
          sectionTitle: 'Best for You',
          viewAllOnTap: () => _onTap(context),
          child: SizedBox(
            height: 210,
            child: BestForYouListView(),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    GoRouter.of(context).push(AppRouterConfig.kBestForYouRoute);
  }
}
