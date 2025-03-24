import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/presentation/widgets/form_field_widget.dart';

import '../../../../../core/widgets/custom_buttons/custom_button.dart';
import '../../controllers/reset_pass_cubit/reset_pass_cubit.dart' show ResetPassCubit;

class ResetPassFormWidget extends StatefulWidget {
  const ResetPassFormWidget({super.key, required this.accessToken});
  final String accessToken;
  @override
  State<ResetPassFormWidget> createState() => _ResetPassFormWidgetState();
}

class _ResetPassFormWidgetState extends State<ResetPassFormWidget> {
  late final TextEditingController passController;
  late final TextEditingController confirmPassController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
        children: [
          FormFieldWidget(
            controller: passController,
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
            height: 50,
          ),
          CustomButton(
            text: 'Reset Password',
            onPressed: () => _onPressed(
              newPass: passController.text,
              accessToken: widget.accessToken,
            ),
          ),
        ],
      ),
    );
  }

  String? _validator(String? str) {
    if (str == null || str.isEmpty) {
      return 'Required Field';
    } else if (str.length < 8) {
      return 'Week password';
    } else if (passController.text != confirmPassController.text) {
      return 'Password doesn\'t match';
    } else {
      return null;
    }
  }

  void _onPressed({required String accessToken, required String newPass}) {
    if (_formKey.currentState!.validate()) {
      context.read<ResetPassCubit>().resetPassword(
            accessToken: accessToken,
            newPass: newPass,
          );
    }
  }
}