import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/utlis/app_text_styles.dart';
import 'package:marketi/features/authentication/presentation/controllers/log_in_cubit/log_in_cubit.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/custom_button.dart';
import 'otp_form_field.dart';

class OtpFormWidget extends StatefulWidget {
  const OtpFormWidget({super.key, required this.email, required this.verifyType});
  final String email;
  final String verifyType;

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
              context.read<LogInCubit>().verifyOTP(
                    otp: otp,
                    email: widget.email,
                    verifyType: widget.verifyType,
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
