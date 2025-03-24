import 'package:flutter/material.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_text_styles.dart';
import 'user_profile_image_widget.dart';

class UserProfileDetails extends StatelessWidget {
  const UserProfileDetails({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UserProfileImageWidget(
          user: user,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          user.name ?? "Ahmed Osama EM",
          style: AppTextStyles.kStyleSB18,
        ),
        Text(
          "@${user.username ?? "@ahmedosamaem"}",
          style: AppTextStyles.kStyleM14.copyWith(
            color: AppColors.kGreyScale,
          ),
        )
      ],
    );
  }
}
