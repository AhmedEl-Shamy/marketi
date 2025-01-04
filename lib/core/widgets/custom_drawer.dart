import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/utlis/app_assets.dart';

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
            onTap: () {},
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
}
