import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_page_widget.dart';
import '../widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBarTitle: 'Hi, Ahmed',
      leading: Container(
        width: 48,
        height: 48,
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
      ),
      trailing: IconButton(
        iconSize: 30,
        color: AppColors.kDarkLightBlue100,
        onPressed: () {},
        icon: SvgPicture.asset(
          AppAssets.kImagesBellIconUIA,
          fit: BoxFit.scaleDown,
        ),
      ),
      body: HomePageBody(),
    );
  }
}