import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class ErrorMsgWidget extends StatelessWidget {
  const ErrorMsgWidget({
    super.key,
    required this.msg,
    required this.isVisible,
  });
  final String msg;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Text(
        msg,
        textAlign: TextAlign.center,
        style: AppTextStyles.kStyleM14.copyWith(
          color: AppColors.kDarkRed100,
          backgroundColor: AppColors.kDarkRed100.withValues(
            alpha: 0.125,
          ),
        ),
      ),
    );
  }
}