import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'token_storage.g.dart';

class TokenStorage {
  // ! Use FlutterSecureStorage to securely store authentication tokens
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

@riverpod
TokenStorage tokenStorage(Ref ref) => TokenStorage();
