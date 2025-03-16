import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utlis/app_router_config.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../../core/widgets/custom_search_text_field.dart';

class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: SearchTextField(
          readOnly: true,
          onTap: () => _onTap(context),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    GoRouter.of(context).push(AppRouterConfig.kSearchRoute);
  }
}
