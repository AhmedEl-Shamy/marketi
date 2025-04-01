import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/features/authentication/presentation/controllers/reset_pass_cubit/reset_pass_cubit.dart';

import '../../../../core/utlis/functions.dart';
import '../widgets/reset_pass_page/reset_password_page_body.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({
    super.key,
    required this.accessToken,
  });
  final String accessToken;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPassCubit, ResetPassState>(
      listener: _listener,
      child: Scaffold(
          body: ResetPasswordPageBody(
        accessToken: accessToken,
      )),
    );
  }

  void _listener(BuildContext context, ResetPassState state) {
    if (state is ResetPassLoading) {
      showLoading(context);
    } else if (state is ResetPassSuccess) {
      GoRouter.of(context).pop();
      GoRouter.of(context).pop();
    } else {
      GoRouter.of(context).pop();
    }
  }
}
