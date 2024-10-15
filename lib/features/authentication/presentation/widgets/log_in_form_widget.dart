import 'package:flutter/material.dart';

import 'form_field_widget.dart';

class LogInFormWidget extends StatelessWidget {
  const LogInFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          FormFieldWidget(
            isPassword: false,
            hint: 'Username or Email',
            inputType: TextInputType.name,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          FormFieldWidget.passwordFormField(
            hint: 'Password',
          ),
        ],
      ),
    );
  }
}
