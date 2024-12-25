import 'package:flutter/material.dart';

import 'section_title_widget.dart';

class HomePageSection extends StatelessWidget {
  const HomePageSection({
    super.key,
    required this.sectionTitle,
    required this.viewAllOnTap,
    required this.child,
  });
  final String sectionTitle;
  final void Function() viewAllOnTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SectionTitleWidget(
          sectionTitle: sectionTitle,
          viewAllOnTap: viewAllOnTap,
        ),
        child,
      ],
    );
  }
}