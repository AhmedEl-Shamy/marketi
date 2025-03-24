import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_assets.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import 'custom_drawer_header.dart';
import 'custom_drawer_item.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        spacing: 10,
        children: [
          CustomDrawerHeader(),
          CustomDrawerBodyItem(
            title: 'Buy Again',
            icon: SvgPicture.asset(
              AppAssets.kImagesBuyAgainIcon,
            ),
            onTap: () {},
          ),
          CustomDrawerBodyItem(
            title: 'My Orders',
            icon: SvgPicture.asset(
              AppAssets.kImagesMyOrdersIcon,
            ),
            onTap: () {},
          ),
          CustomDrawerBodyItem(
            title: 'Payments',
            icon: Icon(Icons.payment),
            onTap: () {},
          ),
          CustomDrawerBodyItem(
            title: 'Account Settings',
            icon: Icon(Icons.settings_outlined),
            onTap: () => _navigateTo(context, '/profile'),
          ),
          CustomDrawerBodyItem(
            title: 'Support',
            icon: SvgPicture.asset(
              AppAssets.kImagesChatSupportIcon,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
  void _navigateTo(BuildContext context, String route) {
    if ((context.read<LogInCubit>().isLoggedIn)) {
      GoRouter.of(context).push(route);
    } else {
      GoRouter.of(context).push('/login');
    }
  }
}
