import 'package:flutter/material.dart';

import 'popular_search_results.dart';
import 'search_expansion_section.dart';

class PopularSearchSection extends StatelessWidget {
  const PopularSearchSection({
    super.key,
    required this.searchController,
    this.focusNode,
  });
  final TextEditingController searchController;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return SearchExpansionSection(
      sectionTitle: 'Popular Search',
      children: [
        PopularSearchResults(
          focusNode: focusNode,
          searchController: searchController,
        ),
      ],
    );
  }
}
