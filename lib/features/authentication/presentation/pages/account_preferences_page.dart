import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/features/authentication/presentation/controllers/account_manager_cubit/account_preferences_cubit.dart';

import '../../../../core/utlis/functions.dart';
import '../widgets/account_preferences/account_preferences_page_body.dart';

class AccountPreferencesPage extends StatelessWidget {
  const AccountPreferencesPage({super.key});

  void _listener(BuildContext context, AccountPreferencesState state) {
    if (state is AccountPreferencesLoading) {
      showLoading(context);
    } else if (state is AccountPreferencesSuccess) {
      print(state);
      GoRouter.of(context).pop();
      showSnackBar(
          context: context, message: "Account Details Updated Successfully");
    } else if (state is AccountPreferencesFailure) {
      print(state.failure.errorMsg);
      GoRouter.of(context).pop();
      showSnackBar(
          context: context, message: state.failure.errorMsg, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountPreferencesCubit, AccountPreferencesState>(
      listener: _listener,
      child: Scaffold(
        body: AccountPreferencesPageBody(),
      ),
    );
  }
}
