import 'package:flutter/widgets.dart';
import 'package:marketi/features/profile/domain/entities/user_entity.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import 'user_profile_image_widget.dart';

class UserProfileDetails extends StatelessWidget {
  const UserProfileDetails({
    super.key, required this.user,
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
          user.name,
          style: AppTextStyles.kStyleSB18,
        ),
        Text(
          user.userName,
          style: AppTextStyles.kStyleM14.copyWith(
            color: AppColors.kGreyScale,
          ),
        )
      ],
    );
  }
}