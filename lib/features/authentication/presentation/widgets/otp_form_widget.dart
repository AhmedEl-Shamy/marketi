import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/features/authentication/presentation/controllers/verify_cubit/verify_cubit.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_constants.dart';
import '../../../../core/widgets/custom_button.dart';

class OtpFormWidget extends StatefulWidget {
  const OtpFormWidget({super.key, required this.email});
  final String email;

  @override
  State<OtpFormWidget> createState() => _OtpFormWidgetState();
}

class _OtpFormWidgetState extends State<OtpFormWidget> {
  late final List<TextEditingController> controllers;

  @override
  void initState() {
    controllers = List<TextEditingController>.generate(
      6,
      (index) => TextEditingController(),
    );
    super.initState();
  }

  @override
  void dispose() {
    for (var element in controllers) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 15,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: controllers
                .map(
                  (e) => OTPTextFormField(controller: e),
                )
                .toList(),
          ),
          InkWell(
            onTap: _getCode,
            child: Text(
              'Paste Code',
              style: AppTextStyles.kStyleM16.copyWith(
                color: AppColors.kDarkLightBlue100,
              ),
            ),
          ),
          CustomButton(
            text: 'Verify',
            onPressed: () {
              String otp = "";
              for (var element in controllers) {
                otp += element.text;
              }
              context.read<VerifyCubit>().verify(
                    otp: otp,
                    email: widget.email,
                    verifyType: 'email',
                  );
            },
          ),
        ],
      ),
    );
  }

  void _getCode() async {
    ClipboardData? clipboardText =
        await Clipboard.getData(Clipboard.kTextPlain);
    String text = clipboardText?.text ?? '';
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].text = text[i];
    }
  }
}

class OTPTextFormField extends StatelessWidget {
  const OTPTextFormField({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      child: TextFormField(
        controller: controller,
        maxLength: 1,
        keyboardType: TextInputType.number,
        onChanged: (value) => _onChanged(value, context),
        buildCounter: (
          context, {
          required currentLength,
          required isFocused,
          required maxLength,
        }) =>
            SizedBox(),
        textAlign: TextAlign.center,
        style: AppTextStyles.kStyleM32,
        decoration: InputDecoration(
          enabledBorder: _buildBorder(),
          border: _buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder _buildBorder() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(
          AppConstants.kBorderCircularRadius,
        ),
        borderSide: BorderSide(
          color: AppColors.kLightBlue700.withValues(alpha: 255 * 0.7),
          width: 2,
        ),
      );

  void _onChanged(String value, BuildContext context) {
    if (value.length == 1) {
      FocusScope.of(context).nextFocus();
    }
  }
}
