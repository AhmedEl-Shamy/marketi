import 'package:flutter/material.dart';

import '../utlis/app_constants.dart';
import '../utlis/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.scrollController,
    this.centerTitle = false,
  });
  final String title;
  final bool centerTitle;
  final Widget leading;
  final Widget trailing;
  final ScrollController? scrollController;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppConstants.kMainPagePadding,
      ),
      child: Row(
        mainAxisAlignment: centerTitle
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        spacing: 10,
        children: [
          leading,
          Text(
            title,
            style: AppTextStyles.kStyleM20,
          ),
          if (!centerTitle) Spacer(),
          trailing,
        ],
      ),
    );
  }
}
