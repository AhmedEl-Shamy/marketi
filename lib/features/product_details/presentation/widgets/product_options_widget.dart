import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/utlis/app_text_styles.dart';
import '../../domain/entities/product_option_entity.dart';

class ProductOptions extends StatefulWidget {
  const ProductOptions({
    super.key,
    required this.productOptions,
  });
  final ProductOptionEntity productOptions;

  @override
  State<ProductOptions> createState() => _ProductOptionsState();
}

class _ProductOptionsState extends State<ProductOptions> {
  late String selectedOption;
  @override
  void initState() {
    selectedOption = widget.productOptions.values.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select ${widget.productOptions.optionName}',
          style: AppTextStyles.kStyleM16,
        ),
        SegmentedButton(
          showSelectedIcon: false,
          style: SegmentedButton.styleFrom(
              selectedForegroundColor: Colors.white,
              selectedBackgroundColor: AppColors.kDarkLightBlue100,
              iconColor: Colors.white,
              textStyle: AppTextStyles.kStyleM16,
              side: BorderSide(
                color: AppColors.kDarkLightBlue100,
                width: 1,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          segments: widget.productOptions.values.map(_creteSegment).toList(),
          selected: {selectedOption},
          onSelectionChanged: (selected) {
            setState(() {
              selectedOption = selected.first;
            });
          },
        ),
      ],
    );
  }

  ButtonSegment _creteSegment(String value) {
    return ButtonSegment(
      value: value,
      label: Text(value),
    );
  }
}
