import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/core/widgets/products_grid_view.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';

import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_page_item.dart';
import '../../../authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBarTitle: 'Favorites',
      centerTitle: true,
      leading: UserAvatarWidget(
        user: context.read<LogInCubit>().user,
        onPressed: () => Scaffold.of(context).openDrawer(),
      ),
      pageItems: [
        CustomPageItem(
          sliver: SliverToBoxAdapter(
            child: Text(
              'Favorite Products',
              style: AppTextStyles.kStyleSB20,
            ),
          ),
        ),
        // FavoritesPageListView()
        ProductsGridView(),
      ],
    );
  }
}
