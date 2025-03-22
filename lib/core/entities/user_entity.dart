class UserEntity {
  final String accessToken;
  final String refreshToken;
  final String id;
  String? name;
  String? username;
  final String email;
  final String? image;

  UserEntity({
    required this.accessToken,
     required this.refreshToken,
    required this.id,
    required this.email,
    this.name,
    this.username,
    this.image,
  });

  void setUserData({
    required String name,
    required String username,
  }) {
    this.name = name;
    this.username = username;
  }
}
