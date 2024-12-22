import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_constants.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';

import '../utlis/app_assets.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
    this.textStyle = AppTextStyles.kStyleM12,
    this.suffixIcon,
  });
  final String hint;
  final TextInputType inputType;
  final Widget prefixIcon;
  final TextStyle textStyle;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This is Required Field';
        }
        return null;
      },
      style: textStyle,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: textStyle.copyWith(
          color: AppColors.kPlaceholder,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: AppColors.kDarkBlue900,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppConstants.kBorderCircularRadius,
        ),
        borderSide: BorderSide(
          color: AppColors.kLightBlue700.withValues(alpha: 255 * 0.7),
          width: 2,
        ),
      );
}

class CustomPasswordTextField extends StatefulWidget {
  const CustomPasswordTextField({
    super.key,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
  });
  final String hint;
  final TextInputType inputType;
  final Widget prefixIcon;

  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This is Required Field';
        }
        return null;
      },
      obscureText: isNotVisible,
      style: AppTextStyles.kStyleM12,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: AppTextStyles.kStyleR12.copyWith(
          color: AppColors.kPlaceholder,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          onPressed: _onPressed,
          icon: Icon(
            isNotVisible ? Icons.visibility_off : Icons.visibility,
          ),
        ),
        prefixIconColor: AppColors.kDarkBlue900,
        suffixIconColor: AppColors.kDarkBlue900,
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppConstants.kBorderCircularRadius,
        ),
        borderSide: BorderSide(
          color: AppColors.kLightBlue700.withValues(alpha: 255 * 0.7),
          width: 2,
        ),
      );

  void _onPressed() {
    setState(() {
      isNotVisible = !isNotVisible;
    });
  }
}


class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      hint: 'What are you looking for ?',
      inputType: TextInputType.text,
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
