import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/presentation/controllers/register_cubit/register_cubit.dart';
import 'package:marketi/features/authentication/presentation/widgets/error_msg_widget.dart';

import '../../../../core/utlis/app_constants.dart';
import 'register_form_widget.dart';
import 'register_page_custom_app_bar.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        spacing: 10,
        children: [
          RegisterPageCustomAppBar(),
          BlocBuilder<RegisterCubit, RegisterState>(
            buildWhen: (previous, current) => current is RegisterFailure,
            builder: (context, state) {
              return ErrorMsgWidget(
                msg: (state is RegisterFailure) ? state.failure.errorMsg : '',
                isVisible: state is RegisterFailure,
              );
            },
          ),
          RegisterFormWidget(),
        ],
      ),
    );
  }
}
