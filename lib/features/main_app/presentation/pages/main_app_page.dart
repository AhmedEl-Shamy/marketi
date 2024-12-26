// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:marketi/features/home/presentation/widgets/home_body.dart';
import 'package:marketi/features/main_app/presentation/widgets/main_app_page_widget.dart';

import '../widgets/main_app_page_body.dart';

class MainAppPage extends StatefulWidget {
  const MainAppPage({super.key,});

  @override
  State<MainAppPage> createState() => _MainAppPageState();
}

class _MainAppPageState extends State<MainAppPage> {
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MainAppPageWidget(
      pageController: pageController,
      child: MainAppPageBody(
        pageController: pageController,
        pages: [
          HomePage(),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            color: Colors.red,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            color: Colors.green,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}


