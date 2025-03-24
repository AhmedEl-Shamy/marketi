import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_text_styles.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.leadingIcon,
  });
  final String title;
  final void Function() onTap;
  final Widget leadingIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(title),
          titleTextStyle: AppTextStyles.kStyleSB18,
          leading: leadingIcon,
          trailing: Container(
            width: 25,
            height: 25,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 1,
                color: AppColors.kLightBlue700.withValues(alpha: 0.7),
              ),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Icon(
                Icons.arrow_forward_ios,
              ),
            ),
          ),
          onTap: onTap,
        ),
        Divider(
          height: 8,
        )
      ],
    );
  }
}
