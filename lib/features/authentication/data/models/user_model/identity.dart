import 'identity_data.dart';

class Identity {
  String? identityId;
  String? id;
  String? userId;
  IdentityData? identityData;
  String? provider;
  DateTime? lastSignInAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? email;

  Identity({
    this.identityId,
    this.id,
    this.userId,
    this.identityData,
    this.provider,
    this.lastSignInAt,
    this.createdAt,
    this.updatedAt,
    this.email,
  });

  factory Identity.fromJson(Map<String, dynamic> json) => Identity(
        identityId: json['identity_id'] as String?,
        id: json['id'] as String?,
        userId: json['user_id'] as String?,
        identityData: json['identity_data'] == null
            ? null
            : IdentityData.fromJson(
                json['identity_data'] as Map<String, dynamic>),
        provider: json['provider'] as String?,
        lastSignInAt: json['last_sign_in_at'] == null
            ? null
            : DateTime.parse(json['last_sign_in_at'] as String),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        email: json['email'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'identity_id': identityId,
        'id': id,
        'user_id': userId,
        'identity_data': identityData?.toJson(),
        'provider': provider,
        'last_sign_in_at': lastSignInAt?.toIso8601String(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'email': email,
      };
}
