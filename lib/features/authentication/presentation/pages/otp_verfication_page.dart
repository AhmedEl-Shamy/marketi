import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/functions.dart';
import 'package:marketi/features/authentication/presentation/controllers/verify_cubit/verify_cubit.dart';
import 'package:marketi/features/authentication/presentation/widgets/otp_verfication_page_body.dart';

class OtpVerficationPage extends StatelessWidget {
  const OtpVerficationPage({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<VerifyCubit, VerifyState>(
        listener: _listener,
        child: OtpVerficationPageBody(
          email: email,
        ),
      ),
    );
  }
  void _listener(BuildContext context, VerifyState state) {
    if (state is VerifyLoading) {
      showLoading(context);
    } else if (state is VerifySuccess) {
      print(state);
      GoRouter.of(context).pop();
      GoRouter.of(context).pop();
    } else {
      print((state as VerifyFailure).failure.errorMsg);
      GoRouter.of(context).pop();
    }
  }
}
