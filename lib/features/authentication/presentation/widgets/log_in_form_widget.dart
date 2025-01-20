import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../core/widgets/custom_button.dart';
import 'form_field_widget.dart';
import 'log_in_options_widget.dart';

class LogInFormWidget extends StatefulWidget {
  const LogInFormWidget({
    super.key,
  });

  @override
  State<LogInFormWidget> createState() => _LogInFormWidgetState();
}

class _LogInFormWidgetState extends State<LogInFormWidget> {
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 15,
        children: [
          FormFieldWidget(
            controller: emailController,
            isPassword: false,
            hint: 'Email',
            inputType: TextInputType.name,
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
          ),
          FormFieldWidget.passwordFormField(
            controller: passwordController,
            hint: 'Password',
          ),
          LogInOptionsWidget(),
          SizedBox(
            height: 5,
          ),
          CustomButton(
            text: 'Log In',
            onPressed: _logInUser,
          ),
        ],
      ),
    );
  }

  void _logInUser() {
    if (formKey.currentState?.validate() ?? false) {
      BlocProvider.of<LogInCubit>(context).logIn(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }
}
