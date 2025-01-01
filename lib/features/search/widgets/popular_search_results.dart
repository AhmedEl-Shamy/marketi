import 'package:flutter/material.dart';

import 'popular_search_button.dart';

class PopularSearchResults extends StatelessWidget {
  const PopularSearchResults({
    super.key,
    required this.searchController,
    this.focusNode,
  });
  final TextEditingController searchController;
  final FocusNode? focusNode;
  static const List<String> popularData = [
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
    return SizedBox(
      width: double.infinity,
      child: Wrap(
          alignment: WrapAlignment.start,
          direction: Axis.horizontal,
          spacing: 10,
          runSpacing: 15,
          children: popularData
              .map(
                (data) => PopularSearchItem(
                  data: data,
                  controller: searchController,
                  focusNode: focusNode,
                ),
              )
              .toList()),
    );
  }
}
