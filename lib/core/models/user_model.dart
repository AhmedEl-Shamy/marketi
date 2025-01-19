import 'package:marketi/core/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    required super.id,
    required super.name,
    required super.username,
    required super.email,
    // required super.image,
  });
  factory UserModel.fromUserDataMap(Map<String, dynamic> userData) {
    return UserModel(
      id: userData['id'],
      email: userData['email'],
      name: userData['display_name'],
      username: userData['username'],
      // image: image,
    );
  }
}
