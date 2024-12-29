import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/widgets/custom_page_item.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';
import 'package:marketi/features/home/presentation/widgets/best_for_you_section.dart';
import 'package:marketi/features/home/presentation/widgets/brands_section.dart';
import 'package:marketi/features/home/presentation/widgets/buy_again_section.dart';
import 'package:marketi/features/home/presentation/widgets/categories_section.dart';
import 'package:marketi/features/home/presentation/widgets/popular_products_section.dart';
import 'package:marketi/features/home/presentation/widgets/special_offer_widget.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/custom_page_widget.dart';
import '../../../../core/widgets/user_avatar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPageWidget(
      appBarTitle: 'Hi, Ahmed',
      leading: UserAvatarWidget(),
      trailing: IconButton(
        iconSize: 30,
        color: AppColors.kDarkLightBlue100,
        onPressed: () {},
        icon: SvgPicture.asset(
          AppAssets.kImagesBellIconUIA,
          fit: BoxFit.scaleDown,
        ),
      ),
      pageItems: [
        CustomPageItem(
          sliver: SliverToBoxAdapter(
            child: SearchTextField(),
          ),
        ),
        SpecialOfferWidget(),
        PopularProductsSection(),
        CategoriesSection(),
        BestForYouSection(),
        BrandsSection(),
        BuyAgainSection(),
      ],
    );
  }
}
