import 'package:flutter/material.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/user_avatar_widget.dart';

class UserProfileImageWidget extends StatelessWidget {
  const UserProfileImageWidget({
    super.key,
    required this.user,
  });
  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Container(
        width: 25,
        height: 25,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            Icons.add_a_photo_outlined,
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
      isLabelVisible: true,
      backgroundColor: Colors.transparent,
      alignment: AlignmentDirectional.bottomEnd,
      offset: Offset(-22, -22),
      child: SizedBox(
        width: 120,
        height: 120,
        child: UserAvatarWidget(
          user: user,
          onPressed: () {},
        ),
      ),
    );
  }
}
