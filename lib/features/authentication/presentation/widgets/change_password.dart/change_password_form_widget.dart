import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_buttons/custom_button.dart';
import '../form_field_widget.dart';

class ChangePassFormWidget extends StatefulWidget {
  const ChangePassFormWidget({super.key});

  @override
  State<ChangePassFormWidget> createState() => _ChangePassFormWidgetState();
}

class _ChangePassFormWidgetState extends State<ChangePassFormWidget> {
  late final GlobalKey<FormState> _formKey;
  late final TextEditingController oldPassController;
  late final TextEditingController newPassController;
  late final TextEditingController confirmPassController;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    oldPassController = TextEditingController();
    newPassController = TextEditingController();
    confirmPassController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    oldPassController.dispose();
    newPassController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  String? _validator(String? str) {
    if (str == null || str.isEmpty) {
      return 'Required Field';
    } else if (str.length < 8) {
      return 'Week password';
    } else if (newPassController.text != confirmPassController.text) {
      return 'Password doesn\'t match';
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
        children: [
          SizedBox(
            height: 20,
          ),
          FormFieldWidget(
            controller: oldPassController,
            isPassword: true,
            label: 'Old Password',
            hint: 'Old Password',
            inputType: TextInputType.visiblePassword,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
            validator: _validator,
          ),
          FormFieldWidget(
            controller: newPassController,
            isPassword: true,
            label: 'New Password',
            hint: 'New Password',
            inputType: TextInputType.visiblePassword,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
            validator: _validator,
          ),
          FormFieldWidget(
            controller: confirmPassController,
            isPassword: true,
            label: 'Confirm Password',
            hint: 'Confirm Password',
            inputType: TextInputType.visiblePassword,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
            validator: _validator,
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            text: 'Change Password',
            onPressed: _onPressed,
          ),
        ],
      ),
    );
  }

  void _onPressed() {}
}
