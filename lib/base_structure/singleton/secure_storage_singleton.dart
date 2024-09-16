import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageSingleton {
  static final SecureStorageSingleton _instance =
      SecureStorageSingleton._internal();

  factory SecureStorageSingleton() {
    return _instance;
  }
  SecureStorageSingleton._internal() {
    _storage = const FlutterSecureStorage();
  }

  late FlutterSecureStorage _storage;

  FlutterSecureStorage get storage => _storage;
}
