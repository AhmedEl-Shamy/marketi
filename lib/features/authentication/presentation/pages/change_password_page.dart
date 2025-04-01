import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';
import 'package:marketi/features/authentication/presentation/controllers/reset_pass_cubit/reset_pass_cubit.dart';

import '../../../../core/utlis/functions.dart';
import '../widgets/change_password.dart/change_password_page_body.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  void _listener(BuildContext context, ResetPassState state) {
    if (state is ResetPassLoading) {
      showLoading(context);
    } else if (state is ResetPassSuccess) {
      GoRouter.of(context).go(
        AppRouterConfig.kLogInPageRoute,
        extra: AppRouterConfig.kMainAppRoute,
      );
      showSnackBar(context: context, message: "Password Updated Successfully");
      context.read<LogInCubit>().deleteUser();
    } else if (state is ResetPassFailure) {
      GoRouter.of(context).pop();
      showSnackBar(
          context: context, message: state.failure.errorMsg, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPassCubit, ResetPassState>(
      listener: _listener,
      child: Scaffold(
        body: ChangePasswordPageBody(),
      ),
    );
  }
}
