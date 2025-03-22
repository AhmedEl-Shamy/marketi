import 'package:marketi/core/entities/user_entity.dart';

import 'user.dart';

class UserModel extends UserEntity {
  String? tokenType;
  int? expiresIn;
  int? expiresAt;
  User? user;

  UserModel({
    required super.accessToken,
    required super.refreshToken,
    this.tokenType,
    this.expiresIn,
    this.expiresAt,
    this.user,
  }) : super(
          email: user?.email ?? '',
          id: user?.id ?? '',
        );

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        accessToken: json['access_token'] as String? ?? '',
        tokenType: json['token_type'] as String?,
        expiresIn: json['expires_in'] as int?,
        expiresAt: json['expires_at'] as int?,
        refreshToken: json['refresh_token'] as String? ?? '',
        user: json['user'] == null
            ? null
            : User.fromJson(json['user'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'access_token': accessToken,
        'token_type': tokenType,
        'expires_in': expiresIn,
        'expires_at': expiresAt,
        'refresh_token': refreshToken,
        'user': user?.toJson(),
      };
}
