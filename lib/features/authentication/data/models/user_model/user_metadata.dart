class UserMetadata {
  String? email;
  bool? emailVerified;
  bool? phoneVerified;
  String? sub;

  UserMetadata({
    this.email,
    this.emailVerified,
    this.phoneVerified,
    this.sub,
  });

  factory UserMetadata.fromJson(Map<String, dynamic> json) => UserMetadata(
        email: json['email'] as String?,
        emailVerified: json['email_verified'] as bool?,
        phoneVerified: json['phone_verified'] as bool?,
        sub: json['sub'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'email': email,
        'email_verified': emailVerified,
        'phone_verified': phoneVerified,
        'sub': sub,
      };
}
