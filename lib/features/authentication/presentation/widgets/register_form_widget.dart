import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';
import 'package:marketi/features/authentication/presentation/controllers/register_cubit/register_cubit.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/widgets/custom_button.dart';
import 'form_field_widget.dart';
import 'third_party_auth_widget.dart';

class RegisterFormWidget extends StatefulWidget {
  const RegisterFormWidget({super.key});

  @override
  State<RegisterFormWidget> createState() => _RegisterFormWidgetState();
}

class _RegisterFormWidgetState extends State<RegisterFormWidget> {
  late final TextEditingController nameController;
  late final TextEditingController usernameController;
  late final TextEditingController emailController;
  late final TextEditingController passController;
  late final TextEditingController confirmPassController;
  late final GlobalKey<FormState> formKey;
  @override
  void initState() {
    nameController = TextEditingController();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passController = TextEditingController();
    confirmPassController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    emailController.dispose();
    passController.dispose();
    confirmPassController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        spacing: 3,
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
          ),

          FormFieldWidget(
            controller: usernameController,
            isPassword: false,
            label: 'Username',
            hint: 'Username',
            inputType: TextInputType.name,
            prefixIcon: SvgPicture.asset(
              AppAssets.kImagesUserIcon,
              fit: BoxFit.scaleDown,
            ),
          ),

          // FormFieldWidget(
          //   isPassword: false,
          //   label: 'Phone Number',
          //   hint: '+20 1498585487',
          //   inputType: TextInputType.number,
          //   prefixIcon: SvgPicture.asset(
          //     AppAssets.kImagesPhoneIcon,
          //     fit: BoxFit.scaleDown,
          //   ),
          // ),
          // SizedBox(
          //   height: 3,
          // ),
          FormFieldWidget(
            controller: emailController,
            isPassword: false,
            label: 'Email',
            hint: 'you@gmail.com',
            inputType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.email_outlined),
          ),

          FormFieldWidget.passwordFormField(
            controller: passController,
            label: 'Password',
            hint: 'Password',
            validator: _validator,
          ),

          FormFieldWidget.passwordFormField(
            controller: confirmPassController,
            label: 'Confirm Password',
            hint: 'Confirm Password',
            validator: _validator,
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'Sign Up',
            onPressed: _registerUser,
          ),
          SizedBox(
            height: 9,
          ),
          ThirdPartyAuthWidget(),
        ],
      ),
    );
  }

  String? _validator(String? str) {
    if (str == null || str.isEmpty) {
      return 'Required Field';
    } else if (str.length < 8) {
      return 'Week password';
    } else if (passController.text != confirmPassController.text) {
      return 'Password doesn\'t match';
    } else {
      return null;
    }
  }

  void _registerUser() {
    if (formKey.currentState?.validate() ?? false) {
      BlocProvider.of<RegisterCubit>(context).register(
        email: emailController.text,
        password: passController.text,
        name: nameController.text,
        username: usernameController.text,
      );
    }
  }
}
