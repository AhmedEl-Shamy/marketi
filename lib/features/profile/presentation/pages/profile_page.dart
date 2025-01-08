import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_cart_icon_button.dart';
import 'package:marketi/core/widgets/custom_page_widget.dart';
import 'package:marketi/features/profile/domain/entities/user_entity.dart';

import '../widgets/profile_page_menu.dart';
import '../widgets/profile_user_details_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});
  final UserEntity user;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPageWidget(
        appBarTitle: 'My Profile',
        centerTitle: true,
        leading: CustomBackButton(),
        trailing: CustomCartIconButton(),
        pageItems: [
          ProfileUserDetailsSection(
            user: user,
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 15),
            sliver: ProfilePageMenu(),
          ),
        ],
      ),
    );
  }
}
