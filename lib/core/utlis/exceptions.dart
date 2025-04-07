class ServerDBException implements Exception {
  final String message;
  ServerDBException(this.message);
}

class SecureStorageException implements Exception {
  final String message;

  SecureStorageException({required this.message});
}
