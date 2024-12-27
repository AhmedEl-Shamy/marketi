import 'package:flutter/material.dart';

import '../../../../core/utlis/app_text_styles.dart';
import 'favorites_page_list_view.dart';

class FavoritesPageBody extends StatelessWidget {
  const FavoritesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 10,
        children: [
          Text(
            'Favorite Products',
            style: AppTextStyles.kStyleSB20,
          ),
          FavoritesPageListView()
        ],
      ),
    );
  }
}