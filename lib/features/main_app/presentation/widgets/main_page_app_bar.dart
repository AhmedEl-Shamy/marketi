import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class MainPageAppBar extends StatelessWidget {
  const MainPageAppBar({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          // padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: AppColors.kDarkLightBlue100),
          ),
          child: CircleAvatar(
            child: Text(
              'A',
              style: AppTextStyles.kStyleM20,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          title,
          style: AppTextStyles.kStyleM20,
        ),
        Spacer(),
        IconButton(
          iconSize: 30,
          color: AppColors.kDarkLightBlue100,
          onPressed: () {},
          icon: SvgPicture.asset(
            AppAssets.kImagesBellIconUIA,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}