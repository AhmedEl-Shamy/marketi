import 'package:flutter/material.dart';
import 'package:marketi/features/home/presentation/widgets/home_body.dart';

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
      child: PageView(
        allowImplicitScrolling: false,
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        pageSnapping: true,
        children: [
          HomePage(),
          ...List.generate(3, (index) => Container(
            width: MediaQuery.of(context).size.width - 40,
            color: [Colors.red, Colors.green, Colors.blue][index],
          ),)
        ],
      ),
    );
  }
}
