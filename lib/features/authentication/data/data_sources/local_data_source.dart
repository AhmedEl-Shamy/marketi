import 'package:marketi/core/services/secure_storage_service.dart';
import 'package:marketi/features/authentication/data/exceptions/secure_storage_exception.dart';

abstract class LocalDataSource {
  Future<String?> getUserToken();
  Future<void> setUserToken(String token);
}


class LocalDataSourceImpl extends LocalDataSource {
  final SecureStorageService storage;

  LocalDataSourceImpl({required this.storage});

  @override
  Future<String?> getUserToken() async {
    final String? token = await storage.read('token');
    if (token == null) throw SecureStorageException(message: 'Token not Found');
    return token;
  }

  @override
  Future<void> setUserToken(String token) async {
    await storage.write('token', token);
  }

}