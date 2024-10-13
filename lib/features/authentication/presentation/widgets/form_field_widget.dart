import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/core/widgets/custom_text_field.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    required this.isPassword,
    this.label,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
  });
  final bool isPassword;
  final String? label;
  final String hint;
  final TextInputType inputType;
  final Icon prefixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            style: AppTextStyles.kStyleM12,
          ),
        if (isPassword)
          CustomPasswordTextField(
            hint: hint,
            inputType: inputType,
          )
        else
        CustomTextField(
          hint: hint,
          inputType: inputType,
          prefixIcon: prefixIcon,
        )
      ],
    );
  }
}
