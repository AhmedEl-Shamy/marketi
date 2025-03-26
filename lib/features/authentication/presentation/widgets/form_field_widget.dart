import 'package:flutter/material.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/core/widgets/custom_text_fields/custom_text_field.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    required this.isPassword,
    this.label,
    required this.hint,
    required this.inputType,
    required this.prefixIcon,
    required this.controller,
    this.validator,
    this.enabled,
    this.readOnly,
  });

  FormFieldWidget.passwordFormField({
    super.key,
    required this.hint,
    this.label,
    required this.controller,
    this.validator,
  })  : isPassword = true,
        inputType = TextInputType.visiblePassword,
        enabled = true,
        readOnly = false,
        prefixIcon = Icon(Icons.lock_outline);

  final bool isPassword;
  final String? label;
  final String hint;
  final TextEditingController controller;
  final TextInputType inputType;
  final Widget prefixIcon;
  final String? Function(String?)? validator;
  final bool? enabled;
  final bool? readOnly;

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
            controller: controller,
            hint: hint,
            inputType: inputType,
            prefixIcon: prefixIcon,
            validator: validator,
          )
        else
          CustomTextField(
            controller: controller,
            hint: hint,
            inputType: inputType,
            prefixIcon: prefixIcon,
            validator: validator,
            readOnly: readOnly ?? false,
          )
      ],
    );
  }
}
