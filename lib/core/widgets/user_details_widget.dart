import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_colors.dart';
import 'package:marketi/core/utlis/app_router_config.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/core/widgets/user_avatar_widget.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: UserAvatarWidget(
            user: context.read<LogInCubit>().user!,
            onPressed: () => GoRouter.of(context).push(
              extra: context.read<LogInCubit>().user,
              AppRouterConfig.kProfileRoute,
            ),
          ),
        ),
        Text(
          context.read<LogInCubit>().user?.name ?? 'User Name',
          textAlign: TextAlign.center,
          style: AppTextStyles.kStyleM18.copyWith(
            color: AppColors.kDarkBlue900,
          ),
        ),
        Text(
          '@${context.read<LogInCubit>().user?.username ?? 'User Name'}',
          textAlign: TextAlign.center,
          style: AppTextStyles.kStyleM14.copyWith(
            color: AppColors.kGreyScale,
          ),
        ),
        
      ],
    );
  }
}
