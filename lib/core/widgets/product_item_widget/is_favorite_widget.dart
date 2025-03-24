import 'package:flutter/material.dart';

import '../../utlis/app_colors.dart';

class IsFavoriteWidget extends StatelessWidget {
  const IsFavoriteWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 25,
      child: IconButton(
        style: IconButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          foregroundColor: AppColors.kDarkBlue900,
        ),
        onPressed: () {},
        icon: Icon(
          Icons.favorite_sharp,
          size: 16,
        ),
      ),
    );
  }
}
