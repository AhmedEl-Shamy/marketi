import 'package:flutter/material.dart';

import 'search_expansion_section.dart';
import 'search_history_item.dart';

class SearchHistorySection extends StatelessWidget {
  const SearchHistorySection({
    super.key,
    required this.searchController,
  });
  final TextEditingController searchController;
  static const List<String> historyData = [
    'Laptop',
    'Iphone 12 Pro Max',
    'Samsung s22 Ultra',
    'Iphone 12 Pro',
    'Samsung s21 Ultra',
    'Apple Airbods Pro',
    'Laptop',
    'Laptop Dell G15',
    'Apple MacBook',
  ];
  @override
  Widget build(BuildContext context) {
    return SearchExpansionSection(
      sectionTitle: 'Search History',
      children: historyData
          .map(
            (value) => SearchHistoryItem(
              data: value,
              searchController: searchController,
            ),
          )
          .toList(),
    );
  }
}