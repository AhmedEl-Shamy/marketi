import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_drawer/custom_drawer.dart';
import 'custom_bottom_nav_bar.dart';

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
      drawer: CustomAppDrawer(),
      body: child,
      bottomNavigationBar: CustomButtomNavBar(
        pageController: pageController,
      ),
    );
  }
}
