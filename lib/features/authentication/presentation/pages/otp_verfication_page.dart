import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/functions.dart';
import 'package:marketi/features/authentication/presentation/widgets/otp_verfication_page/otp_verfication_page_body.dart';

import '../controllers/log_in_cubit/log_in_cubit.dart';

class OtpVerficationPage extends StatelessWidget {
  const OtpVerficationPage({
    super.key,
    required this.email,
    this.nagivationPath,
    required this.verifyType,
  });
  final String email;
  final String verifyType;
  final String? nagivationPath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LogInCubit, LogInState>(
        listener: _listener,
        child: OtpVerficationPageBody(
          email: email,
          verifyType: verifyType,
        ),
      ),
    );
  }

  void _listener(BuildContext context, LogInState state) {
    if (state is LogInLoading) {
      showLoading(context);
    } else if (state is LogInSuccess) {
      if (nagivationPath != null) {
        GoRouter.of(context).pushReplacement(
          nagivationPath!,
          extra: state.user.accessToken,
        );
      } else {
        GoRouter.of(context).pop();
        GoRouter.of(context).pop();
      }
    } else {
      GoRouter.of(context).pop();
    }
  }
}
