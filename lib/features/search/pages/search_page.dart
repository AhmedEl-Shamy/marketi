import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';

import '../../../core/widgets/custom_cart_icon_button.dart';
import '../widgets/popular_search_section.dart';
import '../widgets/search_field.dart';
import '../widgets/search_history_section.dart';
import '../widgets/search_result_section.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController _searchController;
  @override
  void initState() {
    _searchController = TextEditingController();
    _addSearchControllerListener();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'Search',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomCartIconButton(),
        pageItems: [
          SearchField(
            searchController: _searchController,
          ),
          if (_searchController.text.isNotEmpty)
            SearchResultSection()
          else ...[
            PopularSearchSection(
              searchController: _searchController,
            ),
            SearchHistorySection(
              searchController: _searchController,
            )
          ]
        ],
      ),
    );
  }

  void _addSearchControllerListener() {
    _searchController.addListener(() {
      setState(() {
      });
    });
  }
}
