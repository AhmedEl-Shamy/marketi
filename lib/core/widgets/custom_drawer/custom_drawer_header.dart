import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/app_constants.dart';
import 'package:marketi/core/widgets/not_loged_in_widget.dart';
import 'package:marketi/core/widgets/user_details_widget.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LogInCubit, LogInState>(
      buildWhen: (previous, current) =>
          current is LogInSuccess || current is LogOutSuccess,
      builder: (context, state) {
        return DrawerHeader(
          margin: EdgeInsets.only(top: AppConstants.kMainPagePadding),
          child: (context.read<LogInCubit>().isLoggedIn)
              ? UserDetails()
              : NotLogedInWidget(),
        );
      },
    );
  }
}
