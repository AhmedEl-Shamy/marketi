import 'package:flutter/material.dart';

import '../../utlis/app_constants.dart';

class CustomPageItem extends StatelessWidget {
  const CustomPageItem({
    super.key,
    required this.sliver,
  });
  final Widget sliver;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: AppConstants.kMainPagePadding,
        right: AppConstants.kMainPagePadding,
        bottom: AppConstants.kMainPagePadding,
      ),
      sliver: sliver,
    );
  }
}
