import 'package:flutter/material.dart';

import '../../../core/utlis/app_colors.dart';
import '../../../core/utlis/app_text_styles.dart';

class PopularSearchItem extends StatelessWidget {
  const PopularSearchItem({
    super.key,
    required this.data,
    required this.controller,
    this.focusNode,
  });

  final String data;
  final TextEditingController controller;
  final FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {
        // focusNode.requestFocus();
        controller.text = data;
      },
      style: FilledButton.styleFrom(
        backgroundColor: AppColors.kLightBlue900,
        foregroundColor: AppColors.kLightBlue200,
        textStyle: AppTextStyles.kStyleM16,
        elevation: 0,
      ),
      child: Text(data),
    );
  }
}
