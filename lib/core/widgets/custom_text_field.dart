import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_constants.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
    this.textStyle = AppTextStyles.kStyleM12,
    this.suffixIcon,
    this.onTap,
    this.onFieldSubmitted,
    this.focusNode,
    this.controller,
    this.textInputAction,
    this.autofocus,
  });
  final String hint;
  final TextInputType inputType;
  final Widget prefixIcon;
  final TextStyle textStyle;
  final Widget? suffixIcon;
  final void Function()? onTap;
  final void Function(String value)? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? autofocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: inputType,
      autofocus: autofocus ?? false,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This is Required Field';
        }
        return null;
      },
      textInputAction: textInputAction,
      focusNode: focusNode,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
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
    this.focusNode,
    this.controller,
    this.textInputAction,
  });
  final String hint;
  final TextInputType inputType;
  final Widget prefixIcon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  @override
  State<CustomPasswordTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordTextField> {
  bool isNotVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focusNode,
      keyboardType: widget.inputType,
      controller: widget.controller,
      textInputAction: widget.textInputAction,
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
