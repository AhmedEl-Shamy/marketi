import 'app_metadata.dart';
import 'identity.dart';
import 'user_metadata.dart';

class User {
  String? id;
  String? aud;
  String? role;
  String? email;
  DateTime? emailConfirmedAt;
  String? phone;
  DateTime? confirmedAt;
  DateTime? lastSignInAt;
  AppMetadata? appMetadata;
  UserMetadata? userMetadata;
  List<Identity>? identities;
  DateTime? createdAt;
  DateTime? updatedAt;
  bool? isAnonymous;

  User({
    this.id,
    this.aud,
    this.role,
    this.email,
    this.emailConfirmedAt,
    this.phone,
    this.confirmedAt,
    this.lastSignInAt,
    this.appMetadata,
    this.userMetadata,
    this.identities,
    this.createdAt,
    this.updatedAt,
    this.isAnonymous,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json['id'] as String?,
        aud: json['aud'] as String?,
        role: json['role'] as String?,
        email: json['email'] as String?,
        emailConfirmedAt: json['email_confirmed_at'] == null
            ? null
            : DateTime.parse(json['email_confirmed_at'] as String),
        phone: json['phone'] as String?,
        confirmedAt: json['confirmed_at'] == null
            ? null
            : DateTime.parse(json['confirmed_at'] as String),
        lastSignInAt: json['last_sign_in_at'] == null
            ? null
            : DateTime.parse(json['last_sign_in_at'] as String),
        appMetadata: json['app_metadata'] == null
            ? null
            : AppMetadata.fromJson(
                json['app_metadata'] as Map<String, dynamic>),
        userMetadata: json['user_metadata'] == null
            ? null
            : UserMetadata.fromJson(
                json['user_metadata'] as Map<String, dynamic>),
        identities: (json['identities'] as List<dynamic>?)
            ?.map((e) => Identity.fromJson(e as Map<String, dynamic>))
            .toList(),
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        updatedAt: json['updated_at'] == null
            ? null
            : DateTime.parse(json['updated_at'] as String),
        isAnonymous: json['is_anonymous'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'aud': aud,
        'role': role,
        'email': email,
        'email_confirmed_at': emailConfirmedAt?.toIso8601String(),
        'phone': phone,
        'confirmed_at': confirmedAt?.toIso8601String(),
        'last_sign_in_at': lastSignInAt?.toIso8601String(),
        'app_metadata': appMetadata?.toJson(),
        'user_metadata': userMetadata?.toJson(),
        'identities': identities?.map((e) => e.toJson()).toList(),
        'created_at': createdAt?.toIso8601String(),
        'updated_at': updatedAt?.toIso8601String(),
        'is_anonymous': isAnonymous,
      };
}
