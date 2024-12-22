import 'package:flutter/material.dart';

class MainAppPageBody extends StatelessWidget {
  const MainAppPageBody({
    super.key,
    required this.pages,
    required this.pageController,
  });
  final List<Widget> pages;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: PageView.builder(
        controller: pageController,
        pageSnapping: true,
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return pages[index];
        },
      ),
    );
  }
}
