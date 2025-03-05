import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class TokenStorage {
  final _storage = const FlutterSecureStorage();

  static const String accessTokenKey = 'accessToken';
  static const String refreshTokenKey = 'refreshToken';

  Future<void> saveAccessToken(String? token) async {
    await _storage.write(key: accessTokenKey, value: token);
  }

  Future<void> saveRefreshToken(String? token) async {
    await _storage.write(key: refreshTokenKey, value: token);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: accessTokenKey);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: refreshTokenKey);
  }

  Future<void> clearTokens() async {
    await _storage.deleteAll();
  }
}

final tokenStorageProvider = Provider<TokenStorage>((ref) => TokenStorage());
