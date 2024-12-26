import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/widgets/custom_app_bar.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../../../core/widgets/custom_page_body_widget.dart';
import 'best_for_you_section.dart';
import 'brands_section.dart';
import 'buy_again_section.dart';
import 'categories_section.dart';
import 'popular_products_section.dart';
import 'special_offer_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBar: HomePageAppBar(),
      body: Column(
        spacing: 15,
        children: [
          SearchTextField(),
          SpecialOfferWidget(),
          PopularProductsSection(),
          CategoriesSection(),
          BestForYouSection(),
          BrandsSection(),
          BuyAgainSection(),
          SizedBox()
        ],
      ),
    );
  }
}

class HomePageAppBar extends StatelessWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'Hello, Ahmed',
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
    );
  }
}
