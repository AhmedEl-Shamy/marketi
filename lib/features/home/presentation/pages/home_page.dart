import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/best_for_you_section.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/brands_section.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/buy_again_section.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/categories_section.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/popular_products_section.dart';
import 'package:marketi/features/home/presentation/widgets/home_page_sections/special_offer_widget.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/custom_page_widget/custom_page_widget.dart';
import '../../../../core/widgets/user_avatar_widget.dart';
import '../widgets/home_page_sections/home_search_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      buildWhen: (previous, current) =>
          current is LogInSuccess || current is LogOutSuccess,
      builder: (context, state) {
        return CustomPageWidget(
          appBarTitle: context.read<LogInCubit>().user == null
              ? "Hi"
              : "Hi, ${context.read<LogInCubit>().user?.name}",
          leading: UserAvatarWidget(
            user: context.read<LogInCubit>().user,
            onPressed: () => Scaffold.of(context).openDrawer(),
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
          pageItems: [
            HomeSearchField(),
            SpecialOfferWidget(),
            PopularProductsSection(),
            CategoriesSection(),
            BestForYouSection(),
            BrandsSection(),
            BuyAgainSection(),
          ],
        );
      },
    );
  }
}
