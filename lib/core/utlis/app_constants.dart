import 'package:marketi/core/entities/user_entity.dart';

abstract class AppConstants {
  static const double kMainPagePadding = 15;
  static const double kBorderCircularRadius = 14;
  static const String kMainFontFamily = 'Poppins';
  static const String kMontserratFamily = 'Montserrat';
  static const Duration kFastAnimationDuration = Duration(milliseconds: 200);
  static const UserEntity kTempUserData = UserEntity(
    id: '',
    name: 'Ahmed El-Shamy',
    userName: '@ahmedelshamy',
    image: '/',
  );
  // static const Duration kFastAnimationDuration = Duration(milliseconds: 200);
}
