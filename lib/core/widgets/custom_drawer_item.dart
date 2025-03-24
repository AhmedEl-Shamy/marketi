import 'package:flutter/material.dart';

import '../utlis/app_text_styles.dart';

class CustomDrawerBodyItem extends StatelessWidget {
  const CustomDrawerBodyItem({
    super.key,
    required this.title,
    required this.onTap,
    required this.icon,
  });
  final String title;
  final void Function() onTap;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      titleTextStyle: AppTextStyles.kStyleSB18,
      leading: icon,
      onTap: onTap,
    );
  }
}
