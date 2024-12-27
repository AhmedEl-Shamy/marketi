import 'package:flutter/material.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42,
      height: 42,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: AppColors.kDarkLightBlue100,
        ),
      ),
      child: CircleAvatar(
        child: Text(
          'A',
          style: AppTextStyles.kStyleM20,
        ),
      ),
    );
  }
}