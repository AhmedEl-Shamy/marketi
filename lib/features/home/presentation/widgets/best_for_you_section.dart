import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

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
          viewAllOnTap: () {},
          child: SizedBox(
            height: 210,
            child: BestForYouListView(),
          ),
        ),
      ),
    );
  }
}
