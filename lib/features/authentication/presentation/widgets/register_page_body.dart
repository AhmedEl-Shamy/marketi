import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/utlis/app_assets.dart';
import 'package:marketi/core/widgets/custom_button.dart';
import 'package:marketi/features/authentication/presentation/widgets/form_field_widget.dart';
import 'package:marketi/features/authentication/presentation/widgets/third_party_auth_widget.dart';

import '../../../../core/utlis/app_constants.dart';
import 'register_page_custom_app_bar.dart';

class RegisterPageBody extends StatelessWidget {
  const RegisterPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        AppConstants.kMainHorizontalPadding,
      ),
      child: Column(
        children: [
          RegisterPageCustomAppBar(),
          RegisterFormWidget(),
        ],
      ),
    );
  }
}

class RegisterFormWidget extends StatelessWidget {
  const RegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormFieldWidget(
          isPassword: false,
          label: 'Your Name',
          hint: 'Full Name',
          inputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            AppAssets.kImagesNameIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        FormFieldWidget(
          isPassword: false,
          label: 'Username',
          hint: 'Username',
          inputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            AppAssets.kImagesUserIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        FormFieldWidget(
          isPassword: false,
          label: 'Phone Number',
          hint: '+20 1498585487',
          inputType: TextInputType.number,
          prefixIcon: SvgPicture.asset(
            AppAssets.kImagesPhoneIcon,
            fit: BoxFit.scaleDown,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        FormFieldWidget(
            isPassword: false,
            label: 'Email',
            hint: 'you@gmail.com',
            inputType: TextInputType.emailAddress,
            prefixIcon: Icon(Icons.email_outlined)),
        SizedBox(
          height: 3,
        ),
        FormFieldWidget.passwordFormField(
          label: 'Password',
          hint: 'Password',
        ),
        SizedBox(
          height: 3,
        ),
        FormFieldWidget.passwordFormField(
          label: 'Confirm Password',
          hint: 'Confirm Password',
        ),
        SizedBox(
          height: 14,
        ),
        CustomButton(
          text: 'Sign Up',
          onPressed: () {},
        ),
        SizedBox(
          height: 12,
        ),
        ThirdPartyAuthWidget(),
      ],
    );
  }
}
