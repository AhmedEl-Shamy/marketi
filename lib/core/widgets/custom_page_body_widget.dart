import 'package:flutter/material.dart';

import '../utlis/app_constants.dart';

class CustomPageBodyWidget extends StatelessWidget {
  const CustomPageBodyWidget({
    super.key,
    required this.body,
  });
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppConstants.kMainPagePadding,
        ),
        child: body,
      ),
    );
  }
}