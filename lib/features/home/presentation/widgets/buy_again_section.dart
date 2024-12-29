import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';

import 'buy_again_list_view.dart';
import 'home_page_section.dart';

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
          viewAllOnTap: () {},
          child: SizedBox(
            height: 210,
            child: BuyAgainListView(),
          ),
        ),
      ),
    );
  }
}