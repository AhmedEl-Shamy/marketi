import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_colors.dart';

import 'app_constants.dart';

abstract class AppTextStyles {
  static const TextStyle kStyleSB10 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle kStyleR12 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 12,
    color: AppColors.kNavy,
  );
  static const TextStyle kStyleM12 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );
  
  static const TextStyle kStyleM14 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );
  static const TextStyle kStyleSB14 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.kDarkLightBlue100,
  );
  static const TextStyle kStyleMontserratSB14 = TextStyle(
    fontFamily: AppConstants.kMontserratFamily,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.kDarkBlue900,
  );

  static const TextStyle kStyleR16 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 16,
    color: AppColors.kPlaceholder,
  );
  static const TextStyle kStyleM16 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );
  static const TextStyle kStyleSB16 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.kDarkBlue900,
  );
  
  static const TextStyle kStyleM18 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );
  static const TextStyle kStyleSB18 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.kDarkBlue900,
  );

  static const TextStyle kStyleM20 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );
  static const TextStyle kStyleSB20 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.kDarkBlue900,
  );

  static const TextStyle kStyleM24 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );
  
  static const TextStyle kStyleM32 = TextStyle(
    fontFamily: AppConstants.kMainFontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w500,
    color: AppColors.kDarkBlue900,
  );


}