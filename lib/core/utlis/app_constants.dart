

import 'package:marketi/core/entities/user_entity.dart';

abstract class AppConstants {
  static const double kMainPagePadding = 15;
  static const double kBorderCircularRadius = 14;
  static const String kMainFontFamily = 'Poppins';
  static const String kMontserratFamily = 'Montserrat';
  static const Duration kFastAnimationDuration = Duration(milliseconds: 200);
  static  UserEntity kTempUserData = UserEntity(
    accessToken: "asdasdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
    id: '',
    name: 'Ahmed El-Shamy',
    username: '@ahmedelshamy',
    email: 'ahmedel@marketi.com',
    image: '/',
  );
  // static const Duration kFastAnimationDuration = Duration(milliseconds: 200);
}
