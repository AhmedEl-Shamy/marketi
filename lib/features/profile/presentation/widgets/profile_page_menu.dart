import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/custom_page_item.dart';
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
              onTap: () {},
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
              onTap: () {},
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
