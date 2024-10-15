import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utlis/app_assets.dart';
import '../../../../core/widgets/custom_button.dart';
import 'form_field_widget.dart';
import 'third_party_auth_widget.dart';

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