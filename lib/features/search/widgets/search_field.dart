import 'package:flutter/material.dart';

import '../../../core/widgets/custom_page_widget/custom_page_item.dart';
import '../../../core/widgets/custom_text_fields/custom_search_text_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
    required this.searchController,
    this.focusNode,
  });
  final TextEditingController searchController;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: SearchTextField(
          autofocus: true,
          focusNode: focusNode,
          controller: searchController,
        ),
      ),
    );
  }
}
