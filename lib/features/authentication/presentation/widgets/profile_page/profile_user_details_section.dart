import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/entities/user_entity.dart';

import '../../../../../core/utlis/app_assets.dart';
import '../../../../../core/widgets/custom_page_widget/custom_page_item.dart';
import 'user_profile_details.dart';

class ProfileUserDetailsSection extends StatelessWidget {
  const ProfileUserDetailsSection({
    super.key,
    required this.user,
  });

  final UserEntity user;

  @override
  Widget build(BuildContext context) {
    return CustomPageItem(
      sliver: SliverToBoxAdapter(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: EdgeInsets.zero,
          child: AspectRatio(
            aspectRatio: 309 / 216,
            child: Stack(
              fit: StackFit.expand,
              children: [
                SizedBox.expand(
                  child: SvgPicture.asset(
                    AppAssets.kImagesProfileShapes,
                    fit: BoxFit.fill,
                  ),
                ),
                UserProfileDetails(
                  user: user,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
