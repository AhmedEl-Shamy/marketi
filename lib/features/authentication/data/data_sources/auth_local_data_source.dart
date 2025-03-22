import 'package:marketi/core/services/secure_storage_service.dart';
import 'package:marketi/core/utlis/exceptions.dart';

abstract class AuthLocalDataSource {
  Future<String?> getUserToken();
  Future<void> setUserToken(String token);
  Future<void> deleteUserToken();

  
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  final SecureStorageService storage;

  AuthLocalDataSourceImpl({required this.storage});

  

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
  
  @override
  Future<void> deleteUserToken() async {
     await storage.delete('token');
  }
}
