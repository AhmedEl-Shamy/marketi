import 'package:flutter/material.dart';

import '../../../../core/utlis/app_colors.dart';
import '../../../../core/widgets/discount_badge_widget.dart';
import '../../../../core/widgets/is_favorite_widget.dart';

class HomeProductItemImage extends StatelessWidget {
  const HomeProductItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.kLightBlue900,
            borderRadius: BorderRadius.circular(5),
          ),
          child: FlutterLogo(),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(5)),
          child: DiscountBadgeWidget(),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: IsFavoriteWidget(),
          ),
        ),
      ],
    );
  }
}
