import 'package:flutter/material.dart';

import '../utlis/app_constants.dart';

class CustomPageWidget extends StatelessWidget {
  const CustomPageWidget({
    super.key,
    required this.body,
    required this.appBar,
  });
  final Widget body;
  final Widget appBar;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: [
        appBar,
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppConstants.kMainPagePadding,
              ),
              child: body,
            ),
          ),
        ),
      ],
    );
  }
}
