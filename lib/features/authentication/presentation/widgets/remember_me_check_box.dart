import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';

class RememberMeCheckBox extends StatefulWidget {
  const RememberMeCheckBox({
    super.key,
  });

  @override
  State<RememberMeCheckBox> createState() => _RememberMeCheckBoxState();
}

class _RememberMeCheckBoxState extends State<RememberMeCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
          activeColor: AppColors.kDarkLightBlue100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        Text(
          'Remember Me',
          style: AppTextStyles.kStyleR12,
        ),
      ],
    );
  }
}