import 'package:go_router/go_router.dart';
import 'package:marketi/features/authentication/presentation/pages/forgot_pass_page.dart';
import 'package:marketi/features/authentication/presentation/pages/log_in_page.dart';
import 'package:marketi/features/authentication/presentation/pages/register_page.dart';
import 'package:marketi/features/main_app/presentation/pages/main_app_page.dart';
import 'package:marketi/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:marketi/features/splash/presentation/pages/splash_screen.dart';

abstract class AppRouterConfig {
  static const String kSplashPageRoute = '/';
  static const String kOnboardingPageRoute = '/onboarding';
  static const String kLogInPageRoute = '/logIn';
  static const String kRegisterPageRoute = '/register';
  static const String kForgotPassPageRoute = '/forgotPass';
  static const String kMainAppRoute = '/app';

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
    ],
  );
}
