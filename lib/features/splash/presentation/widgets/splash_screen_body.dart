import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_assets.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

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

  void _listener(BuildContext context, LogInState state) {
    if (state is LogInSuccess) {
      GoRouter.of(context).pushReplacement(
        AppRouterConfig.kMainAppRoute,
      );
    } else if (state is LogInTokenFailure) {
      print(state.failure.errorMsg);
      GoRouter.of(context).pushReplacement(
        AppRouterConfig.kOnboardingPageRoute,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInCubit, LogInState>(
      listener: _listener,
      builder: (context, state) {
        return SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: opacityTransition,
                child: Image.asset(
                  AppAssets.kImagesLogoSplashScreen,
                ),
              ),
              Visibility.maintain(
                visible: state is LogInLoading,
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        );
      },
    );
  }

  void startAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1
      ),
    );
    opacityTransition = CurvedAnimation(
      parent: animationController,
      curve: Curves.bounceOut,
    );

    Future.delayed(
      const Duration(seconds: 1),
      () {
        animationController.forward();
      },
    );
    startAutoLogIn(context);
  }

  void startAutoLogIn(BuildContext context) {
    Future.delayed(
      const Duration(milliseconds: 3000),
      () {
        if (context.mounted) {
          context.read<LogInCubit>().logInWithToken();
        }
      },
    );
  }
}
