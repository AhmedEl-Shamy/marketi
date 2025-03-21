import 'package:flutter/material.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';

class UserAvatarWidget extends StatelessWidget {
  const UserAvatarWidget({
    super.key,
    required this.onPressed,
    required this.user,
  });

  final UserEntity? user;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: AppColors.kDarkLightBlue100,
        ),
      ),
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.kLightBlue900,
          shape: CircleBorder(),
          padding: EdgeInsets.zero,
          foregroundColor: AppColors.kDarkBlue900,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Text(
            user?.name?[0] ?? "A",
            style: AppTextStyles.kStyleM20,
          ),
        ),
      ),
    );
  }
}
