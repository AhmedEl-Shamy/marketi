class AppMetadata {
  String? provider;
  List? providers;

  AppMetadata({this.provider, this.providers});

  factory AppMetadata.fromJson(Map<String, dynamic> json) => AppMetadata(
        provider: json['provider'] as String?,
        providers: json['providers'] as List?,
      );

  Map<String, dynamic> toJson() => {
        'provider': provider,
        'providers': providers,
      };
}
