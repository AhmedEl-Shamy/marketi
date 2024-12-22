import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_constants.dart';

import 'custom_bottom_nav_bar.dart';
import 'main_page_app_bar.dart';

class MainAppPageWidget extends StatelessWidget {
  const MainAppPageWidget({
    super.key,
    required this.child,
    required this.pageController,
  });
  final Widget child;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          AppConstants.kMainHorizontalPadding,
        ),
        child: Column(
          children: [
            MainPageAppBar(
              title: 'Hi Ahmed!',
            ),
            Expanded(
              child: child,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtomNavBar(
        pageController: pageController,
      ),
    );
  }
}
