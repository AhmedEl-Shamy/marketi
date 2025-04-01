import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../core/utlis/functions.dart';
import '../widgets/log_in_page/log_in_page_body.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key, this.skipToRoute});
  final String? skipToRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LogInCubit, LogInState>(
        listener: _listener,
        child: LogInPageBody(skipToRoute: skipToRoute),
      ),
    );
  }

  void _listener(BuildContext context, LogInState state) {
    if (state is LogInLoading) {
      showLoading(context);
    } else if (state is LogInSuccess) {
      GoRouter.of(context).pop();
      GoRouter.of(context).pop();
    } else {
      GoRouter.of(context).pop();
    }
  }
}
