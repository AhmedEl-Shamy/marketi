import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/features/authentication/presentation/widgets/error_msg_widget.dart';

import '../../../../../core/utlis/functions.dart';
import '../../../../../core/widgets/custom_buttons/custom_button.dart';
import '../../controllers/forgot_pass_cubit/forgot_pass_cubit.dart';
import '../form_field_widget.dart';

class ForgotPassFormWidget extends StatefulWidget {
  const ForgotPassFormWidget({super.key});

  @override
  State<ForgotPassFormWidget> createState() => _ForgotPassFormWidgetState();
}

class _ForgotPassFormWidgetState extends State<ForgotPassFormWidget> {
  late final TextEditingController emailController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void _listener(BuildContext context, ForgotPassState state) {
    if (state is ForgotPassLoading) {
      showLoading(context);
    } else if (state is ForgotPassSuccess) {
      GoRouter.of(context).pop();
      GoRouter.of(context).pushReplacement(
        AppRouterConfig.kOTPVerification,
        extra: {
          "email": emailController.text,
          "nagivationPath": AppRouterConfig.kResetPassPageRoute,
          "verifyType": "recovery",
        },
      );
    } else {
      GoRouter.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPassCubit, ForgotPassState>(
      listener: _listener,
      builder: (context, state) => Form(
        key: _formKey,
        child: Column(
          spacing: 80,
          children: [
            ErrorMsgWidget(
              msg: (state is ForgotPassFailure) ? state.failure.errorMsg : "",
              isVisible: state is ForgotPassFailure,
            ),
            FormFieldWidget(
              controller: emailController,
              isPassword: false,
              label: 'Email',
              hint: 'you@gmail.com',
              inputType: TextInputType.emailAddress,
              prefixIcon: Icon(
                Icons.email_outlined,
              ),
              validator: _validator,
            ),
            CustomButton(
              text: 'Send Email',
              onPressed: _onPressed,
            ),
          ],
        ),
      ),
    );
  }

  String? _validator(String? str) {
    if (str == null || str.isEmpty) {
      return 'Required Field';
    } else {
      return null;
    }
  }

  void _onPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context
          .read<ForgotPassCubit>()
          .forgotPassword(email: emailController.text);
    }
  }
}
