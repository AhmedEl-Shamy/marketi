import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/utlis/app_text_styles.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({
    super.key,
  });

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: context.read<LogInCubit>().rememberMe,
          onChanged: (value) {
            setState(() {
              context.read<LogInCubit>().rememberMe = value!;
            });
          },
          activeColor: AppColors.kDarkLightBlue100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              context.read<LogInCubit>().rememberMe =
                  !context.read<LogInCubit>().rememberMe;
            });
          },
          child: Text(
            'Remember Me',
            style: AppTextStyles.kStyleR12,
          ),
        ),
      ],
    );
  }
}
