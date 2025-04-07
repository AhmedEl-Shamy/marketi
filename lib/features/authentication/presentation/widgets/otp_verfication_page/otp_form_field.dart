import 'package:flutter/material.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_constants.dart';
import '../../../../../core/utlis/app_text_styles.dart';

class OTPTextFormField extends StatelessWidget {
  const OTPTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        onChanged: (value) => _onChanged(value, context),
        buildCounter: (
          context, {
          required currentLength,
          required isFocused,
          required maxLength,
        }) =>
            SizedBox(),
        textAlign: TextAlign.center,
        style: AppTextStyles.kStyleM32,
        decoration: InputDecoration(
          enabledBorder: _buildBorder(),
          border: _buildBorder(),
        ),
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

  void _onChanged(String value, BuildContext context) {
    if (value.length == 1) {
      FocusScope.of(context).nextFocus();
    }
  }
}
