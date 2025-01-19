class UserEntity {
  final String id;
  final String name;
  final String username;
  final String email;
  final String? image;

  const UserEntity({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.image,
  });
}
