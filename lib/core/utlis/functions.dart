import 'package:flutter/material.dart';

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
