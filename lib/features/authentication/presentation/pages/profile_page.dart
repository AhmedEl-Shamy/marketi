import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/functions.dart';
import 'package:marketi/core/widgets/custom_buttons/custom_back_button.dart';
import 'package:marketi/core/widgets/custom_buttons/custom_cart_icon_button.dart';
import 'package:marketi/core/widgets/custom_page_widget/custom_page_widget.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../widgets/profile_page/profile_page_menu.dart';
import '../widgets/profile_page/profile_user_details_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LogInCubit, LogInState>(
        listener: _listener,
        child: CustomPageWidget(
          appBarTitle: 'My Profile',
          centerTitle: true,
          leading: CustomBackButton(),
          trailing: CustomCartIconButton(),
          pageItems: [
            ProfileUserDetailsSection(
              user: context.read<LogInCubit>().user!,
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 15),
              sliver: ProfilePageMenu(),
            ),
          ],
        ),
      ),
    );
  }

  void _listener(context, state) {
    if (state is LogInLoading) {
      showLoading(context);
    } else if (state is LogOutSuccess) {
      GoRouter.of(context).pop();
      GoRouter.of(context).pop();
    } else if (state is LogInFailure) {
      GoRouter.of(context).pop();
    }
  }
}
