import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../../core/utlis/app_assets.dart';
import '../../../../../core/utlis/app_constants.dart';
import '../error_msg_widget.dart';
import 'log_in_form_widget.dart';
import '../register_page/register_page_navigation.dart';
import 'skip_button.dart';
import '../third_party_auth_widget.dart';

class LogInPageBody extends StatelessWidget {
  const LogInPageBody({super.key, this.skipToRoute});
  final String? skipToRoute;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainPagePadding,
      ),
      child: Column(
        spacing: 10,
        children: [
          Row(
            children: [
              SkipButton(
                skipToRoute: skipToRoute,
              ),
            ],
          ),
          Image.asset(
            AppAssets.kImagesLogoSplashScreen,
            fit: BoxFit.scaleDown,
          ),
          BlocBuilder<LogInCubit, LogInState>(
            buildWhen: (previous, current) => current is! LogInTokenFailure,
            builder: (context, state) {
              return ErrorMsgWidget(
                msg: (state is LogInFailure) ? state.failure.errorMsg : '',
                isVisible: state is LogInFailure,
              );
            },
          ),
          LogInFormWidget(),
          SizedBox(
            height: 5,
          ),
          ThirdPartyAuthWidget(),
          RegisterPageNavigation()
        ],
      ),
    );
  }
}
