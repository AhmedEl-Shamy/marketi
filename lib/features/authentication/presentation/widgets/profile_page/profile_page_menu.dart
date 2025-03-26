import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/widgets/custom_page_widget/custom_page_item.dart';
import 'profile_menu_item.dart';

class ProfilePageMenu extends StatelessWidget {
  const ProfilePageMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            ProfileMenuItem(
              title: 'Account Preferences',
              onTap: () => GoRouter.of(context).push(
                AppRouterConfig.kAccountPreferencesRoute,
              ),
              leadingIcon: Icon(Icons.person_outline_rounded),
            ),
            ProfileMenuItem(
              title: 'Subscription & Payment',
              onTap: () {},
              leadingIcon: Icon(Icons.payment),
            ),
            ProfileMenuItem(
              title: 'Rate Us',
              onTap: () {},
              leadingIcon: Icon(Icons.star_outline),
            ),
            ProfileMenuItem(
              title: 'Provide Feedback',
              onTap: () {},
              leadingIcon: Icon(Icons.feedback_outlined),
            ),
            ProfileMenuItem(
              title: 'Log Out',
              onTap: () {
                context.read<LogInCubit>().logOut();
              },
              leadingIcon: Transform.flip(
                flipX: true,
                child: Icon(
                  Icons.logout,
                  color: AppColors.kDarkRed200,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
