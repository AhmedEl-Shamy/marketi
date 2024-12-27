import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';

import '../widgets/favorites_page_body.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      body: FavoritesPageBody(),
      appBarTitle: 'Favorites',
      centerTitle: true,
      leading: UserAvatarWidget(),
    );
  }
}
