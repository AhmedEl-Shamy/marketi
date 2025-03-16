import 'package:flutter/material.dart';

import '../../../core/utlis/app_colors.dart';
import '../../../core/utlis/app_text_styles.dart';
import '../../../core/widgets/custom_page_item.dart';

class SearchExpansionSection extends StatelessWidget {
  const SearchExpansionSection({
    super.key,
    required this.sectionTitle,
    required this.children,
  });
  final String sectionTitle;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: ExpansionTile(
          childrenPadding: EdgeInsets.zero,
          tilePadding: EdgeInsets.zero,
          initiallyExpanded: true,
          iconColor: AppColors.kDarkBlue900,
          collapsedIconColor: AppColors.kDarkBlue900,
          shape: Border.all(style: BorderStyle.none),
          title: Text(
            sectionTitle,
            style: AppTextStyles.kStyleSB16,
          ),
          children: children,
        ),
      ),
    );
  }
}
