class UserEntity {
  final String accessToken;
  final String id;
  final String? name;
  final String? username;
  final String email;
  final String? image;

  UserEntity({
    required this.accessToken,
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
    name = name;
    username = username;
  }
}
