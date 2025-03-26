import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/utlis/app_router_config.dart';

import '../../../../../core/entities/user_entity.dart';
import '../../../../../core/utlis/app_assets.dart';
import '../../../../../core/utlis/app_colors.dart';
import '../../../../../core/widgets/custom_buttons/custom_button.dart';
import '../../controllers/log_in_cubit/log_in_cubit.dart';
import '../form_field_widget.dart';

class AccountDetailsFormWidget extends StatefulWidget {
  const AccountDetailsFormWidget({super.key});

  @override
  State<AccountDetailsFormWidget> createState() =>
      _AccountDetailsFormWidgetState();
}

class _AccountDetailsFormWidgetState extends State<AccountDetailsFormWidget> {
  late final TextEditingController nameController;
  late final TextEditingController usernameController;
  late final TextEditingController emailController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    nameController = TextEditingController();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    _setUserData();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  String? _validator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  void _setUserData() {
    final UserEntity user = context.read<LogInCubit>().user!;
    print(user.name);
    nameController.text = user.name!;
    usernameController.text = user.username!;
    emailController.text = user.email;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 5,
        children: [
          FormFieldWidget(
            controller: nameController,
            isPassword: false,
            label: 'Your Name',
            hint: 'Full Name',
            inputType: TextInputType.name,
            prefixIcon: SvgPicture.asset(
              AppAssets.kImagesNameIcon,
              fit: BoxFit.scaleDown,
            ),
            validator: _validator,
          ),
          FormFieldWidget(
            readOnly: true,
            controller: usernameController,
            isPassword: false,
            label: 'Username (Cannot be changed)',
            hint: 'Username',
            inputType: TextInputType.name,
            prefixIcon: SvgPicture.asset(
              AppAssets.kImagesUserIcon,
              fit: BoxFit.scaleDown,
            ),
            validator: _validator,
          ),
          FormFieldWidget(
            controller: emailController,
            isPassword: false,
            label: 'Email',
            hint: 'you@gmail.com',
            validator: _validator,
            inputType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.email_outlined),
          ),
          SizedBox(
            height: 17,
          ),
          CustomButton(
            text: "Update Data",
            onPressed: _isChanged() ? _updateAccountDetails : null,
          ),
          SizedBox(
            height: 5,
          ),
          CustomButton(
            text: "Change Password",
            onPressed: () => GoRouter.of(context).push(
              AppRouterConfig.kchangePassRoute,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            text: "Delete Account",
            backgroundColor: AppColors.kDarkRed100,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  bool _isChanged() {
    return false;
  }

  void _updateAccountDetails() {}
}
