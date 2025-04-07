import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';

import 'app_colors.dart';
import 'app_constants.dart';

Future<dynamic> showLoading(BuildContext context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (context) => FittedBox(
      fit: BoxFit.scaleDown,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            AppConstants.kBorderCircularRadius,
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: CircularProgressIndicator(
            color: AppColors.kDarkLightBlue100,
          ),
        ),
      ),
    ),
  );
}

Future<void> showSnackBar({
  required BuildContext context,
  required String message,
  bool isError = false,
}) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 5),
      content: Text(message,
          style: AppTextStyles.kStyleM14.copyWith(color: Colors.white)),
      backgroundColor: isError ? AppColors.kDarkRed900 : AppColors.kDarkBlue900,
    ),
  );
}
