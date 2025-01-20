import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'form_field_widget.dart';

class ForgotPassFormWidget extends StatefulWidget {
  const ForgotPassFormWidget({super.key});

  @override
  State<ForgotPassFormWidget> createState() => _ForgotPassFormWidgetState();
}

class _ForgotPassFormWidgetState extends State<ForgotPassFormWidget> {
  late final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        FormFieldWidget(
          controller: emailController,
          isPassword: false,
          label: 'Email',
          hint: 'you@gmail.com',
          inputType: TextInputType.emailAddress,
          prefixIcon: Icon(
            Icons.email_outlined,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        CustomButton(
          text: 'Send Email',
          onPressed: () {},
        ),
      ],
    );
  }
}