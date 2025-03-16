class IdentityData {
  String? email;
  bool? emailVerified;
  bool? phoneVerified;
  String? sub;

  IdentityData({
    this.email,
    this.emailVerified,
    this.phoneVerified,
    this.sub,
  });

  factory IdentityData.fromJson(Map<String, dynamic> json) => IdentityData(
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
