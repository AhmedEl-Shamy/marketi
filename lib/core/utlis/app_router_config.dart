import 'package:go_router/go_router.dart';
import 'package:marketi/features/authentication/presentation/pages/forgot_pass_page.dart';
import 'package:marketi/features/authentication/presentation/pages/log_in_page.dart';
import 'package:marketi/features/authentication/presentation/pages/register_page.dart';
import 'package:marketi/features/home/presentation/pages/best_for_you_page.dart';
import 'package:marketi/features/home/presentation/pages/brands_page.dart';
import 'package:marketi/features/home/presentation/pages/categories_page.dart';
import 'package:marketi/features/main_app/presentation/pages/main_app_page.dart';
import 'package:marketi/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:marketi/features/product/presentation/pages/product_details_page.dart';
import 'package:marketi/features/search/pages/search_page.dart';
import 'package:marketi/features/splash/presentation/pages/splash_screen.dart';

import '../../features/home/presentation/pages/bay_again_page.dart';
import '../../features/home/presentation/pages/popular_products_page.dart';
import '../../features/product/domain/entities/product_entity.dart';

abstract class AppRouterConfig {
  static const String kSplashPageRoute = '/';
  static const String kOnboardingPageRoute = '/onboarding';
  static const String kLogInPageRoute = '/logIn';
  static const String kRegisterPageRoute = '/register';
  static const String kForgotPassPageRoute = '/forgotPass';
  static const String kMainAppRoute = '/app';
  static const String kPopularProductsRoute = '/popularProducts';
  static const String kBestForYouRoute = '/bestForYou';
  static const String kBuyAgainRoute = '/buyAgain';
  static const String kCategoriesRoute = '/categories';
  static const String kBrandsRoute = '/brands';
  static const String kSearchRoute = '/search';
  static const String kProductDetailsRoute = '/productDetails';

  static GoRouter routerConfig = GoRouter(
    routes: [
      GoRoute(
        path: kSplashPageRoute,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: kOnboardingPageRoute,
        builder: (context, state) => OnboardingPage(),
      ),
      GoRoute(
        path: kLogInPageRoute,
        builder: (context, state) => LogInPage(),
      ),
      GoRoute(
        path: kRegisterPageRoute,
        builder: (context, state) => RegisterPage(),
      ),
      GoRoute(
        path: kForgotPassPageRoute,
        builder: (context, state) => ForgotPassPage(),
      ),
      GoRoute(
        path: kMainAppRoute,
        builder: (context, state) => MainAppPage(),
      ),
      GoRoute(
        path: kPopularProductsRoute,
        builder: (context, state) => PopularProductsPage(),
      ),
      GoRoute(
        path: kBestForYouRoute,
        builder: (context, state) => BestForYouPage(),
      ),
      GoRoute(
        path: kBuyAgainRoute,
        builder: (context, state) => BuyAgainPage(),
      ),
      GoRoute(
        path: kCategoriesRoute,
        builder: (context, state) => CategoriesPage(),
      ),
      GoRoute(
        path: kBrandsRoute,
        builder: (context, state) => BrandsPage(),
      ),
      GoRoute(
        path: kSearchRoute,
        builder: (context, state) => SearchPage(),
      ),
      GoRoute(
        path: kProductDetailsRoute,
        builder: (context, state) => ProductDetailsPage(
          product: state.extra as ProductEntity,
        ),
      )
    ],
  );
}
