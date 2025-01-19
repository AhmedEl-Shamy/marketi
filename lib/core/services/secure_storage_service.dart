import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorageService {
  Future read(String key);
  Future<void> write(String key, String value);
}

class SecureStorageServiceImpl extends SecureStorageService {
  final FlutterSecureStorage storage;

  SecureStorageServiceImpl({required this.storage});

  @override
  Future read(String key) async {
    return await storage.read(key: key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    return await storage.write(key: key, value: value);
  }
}
