import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/services/secure_storage_service.dart';

final GetIt sl = GetIt.I;

void setupLoactor() {
  // services
  sl.registerSingleton<FlutterSecureStorage>(
    FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.first_unlock,
      ),
    ),
  );

  sl.registerSingleton<SecureStorageService>(
    SecureStorageServiceImpl(
      storage: sl.get<FlutterSecureStorage>(),
    ),
  );

  
}
