import 'package:flutter/material.dart';

import '../../../core/utlis/app_colors.dart';
import '../../../core/utlis/app_text_styles.dart';

class SearchHistoryItem extends StatelessWidget {
  const SearchHistoryItem({
    super.key,
    required this.data,
    required this.searchController,
  });

  final String data;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(data),
      titleTextStyle: AppTextStyles.kStyleM16,
      contentPadding: EdgeInsets.zero,
      trailing: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close),
        style: IconButton.styleFrom(foregroundColor: AppColors.kDarkBlue900),
      ),
      onTap: () {
        searchController.text = data;
      },
      shape: Border(
        bottom: BorderSide(
          width: 1,
          color: AppColors.kDarkBlue900,
        ),
      ),
    );
  }
}
