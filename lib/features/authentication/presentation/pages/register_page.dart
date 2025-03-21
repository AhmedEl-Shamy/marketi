import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/core/utlis/functions.dart';
import 'package:marketi/features/authentication/presentation/controllers/register_cubit/register_cubit.dart';

import '../widgets/register_page_body.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    print('${context.read<RegisterCubit>()}');

    return Scaffold(
      body: BlocListener<RegisterCubit, RegisterState>(
        listener: _listener,
        child: RegisterPageBody(),
      ),
    );
  }

  void _listener(BuildContext context, RegisterState state) {
    if (state is RegisterLoading) {
      showLoading(context);
    } else if (state is RegisterSuccess) {
      print(state);
      GoRouter.of(context).pop();
      GoRouter.of(context).pushReplacement(
        AppRouterConfig.kOTPVerification,
        extra: {
          "email": state.email,
          "verifyType": "email",
        },
      );
    } else {
      print((state as RegisterFailure).failure.errorMsg);
      GoRouter.of(context).pop();
    }
  }
}
