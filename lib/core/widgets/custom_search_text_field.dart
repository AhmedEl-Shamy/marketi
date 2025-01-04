import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utlis/app_assets.dart';
import '../utlis/app_colors.dart';
import '../utlis/app_text_styles.dart';
import 'custom_text_field.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.onTap,
    this.onFieldSubmitted,
    this.focusNode,
    this.controller,
    this.autofocus,
    this.readOnly,
  });

  final void Function()? onTap;
  final void Function(String value)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final bool? autofocus;
  final bool? readOnly;

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      readOnly: readOnly,
      autofocus: autofocus ?? false,
      controller: controller,
      focusNode: focusNode,
      hint: 'What are you looking for ?',
      inputType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      prefixIcon: SvgPicture.asset(
        AppAssets.kImagesSearchIcon,
        fit: BoxFit.scaleDown,
      ),
      textStyle: AppTextStyles.kStyleR16.copyWith(
        color: AppColors.kDarkBlue900,
      ),
      suffixIcon: IconButton(
        style: IconButton.styleFrom(
          foregroundColor: AppColors.kDarkLightBlue100,
        ),
        icon: SvgPicture.asset(
          AppAssets.kImagesSearchFilterIcon,
          fit: BoxFit.scaleDown,
        ),
        onPressed: () {},
      ),
    );
  }
}
