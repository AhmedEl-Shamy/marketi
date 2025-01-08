import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/utlis/app_text_styles.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({
    super.key,
    required this.pageController,
  });
  final PageController pageController;
  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
  int selectedItem = 0;

  @override
  void initState() {
    widget.pageController.addListener(() {
      setState(() {
        selectedItem = widget.pageController.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            AppConstants.kBorderCircularRadius,
          ),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            offset: Offset(0, 1),
            color: AppColors.kDarkLightBlue100,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            AppConstants.kBorderCircularRadius,
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedItem,
          onTap: _onTap,
          selectedItemColor: AppColors.kDarkLightBlue100,
          unselectedItemColor: AppColors.kGreyScale,
          selectedLabelStyle: AppTextStyles.kStyleM12,
          unselectedLabelStyle: AppTextStyles.kStyleM12,
          showUnselectedLabels: true,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Badge(
                label: Text('20'),
                isLabelVisible: false,
                child: Icon(
                  Icons.shopping_cart_outlined,
                ),
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }

  void _onTap(int value) {
    if (value == 3) {
      Scaffold.of(context).openDrawer();
      return;
    }
    setState(() {
      selectedItem = value;
      widget.pageController.animateToPage(
        value,
        duration: AppConstants.kFastAnimationDuration,
        curve: Curves.linear,
      );
    });
  }
}
