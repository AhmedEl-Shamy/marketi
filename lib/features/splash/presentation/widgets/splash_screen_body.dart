import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_assets.dart';
import 'package:marketi/core/utlis/app_router_config.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});
  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> opacityTransition;

  @override
  void initState() {
    startAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: opacityTransition,
        child: Image.asset(
          AppAssets.kImagesLogoSplashScreen,
        ),
      ),
    );
  }

  void startAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 1500,
      ),
    );
    opacityTransition = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceOut,
    );

    Future.delayed(
      const Duration(seconds: 1),
      () => animationController.forward(),
    );
    navigateToNextPage(context);
  }

  void navigateToNextPage(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 3500),
      () {
        if (context.mounted) {
          GoRouter.of(context).pushReplacement(
            AppRouterConfig.kOnboardingPageRoute,
          );
        }
      },
    );
  }
}
