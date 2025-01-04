import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_constants.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';
import 'user_avatar_widget.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.only(top: AppConstants.kMainPagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: UserAvatarWidget(
              onPressed: () {},
            ),
          ),
          Text(
            'User Name',
            textAlign: TextAlign.center,
            style: AppTextStyles.kStyleM18.copyWith(
              color: AppColors.kDarkBlue900,
            ),
          ),
          Text(
            '@username',
            textAlign: TextAlign.center,
            style: AppTextStyles.kStyleM14.copyWith(
              color: AppColors.kGreyScale,
            ),
          ),
        ],
      ),
    );
  }
}