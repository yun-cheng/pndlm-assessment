import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/constants/http.dart';
import 'package:pndlm_assessment/exceptions/http_exceptions.dart';
import 'package:pndlm_assessment/models/serializers.dart';
import 'package:pndlm_assessment/models/user.dart';
import 'package:pndlm_assessment/services/http_client.dart';
import 'package:pndlm_assessment/storages/token_storage.dart';

abstract class IAuthRepository {
  Future<User> login({
    required String account,
    required String password,
    required bool shouldRememberUser,
  });
  Future<void> refreshAccessToken();
}

class AuthRepository implements IAuthRepository {
  final Ref _ref;

  AuthRepository(this._ref);

  Never _handleDioException(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.connectionError) {
      throw NetworkException();
    }

    final statusCode = e.response?.statusCode;
    switch (statusCode) {
      case HttpStatus.badRequest:
        throw InvalidCredentialsException();
      case HttpStatus.unauthorized:
        throw SessionExpiredException();
      case HttpStatus.internalServerError:
        throw ServerErrorException();
      default:
        throw UnknownHttpException();
    }
  }

  @override
  Future<User> login({
    required String account,
    required String password,
    required bool shouldRememberUser,
  }) async {
    final dio = _ref.read(dioProvider);

    try {
      final response = await dio.post(
        HttpConstants.login,
        data: {
          'username': account,
          'password': password,
          'shouldRememberUser': shouldRememberUser,
          'expiresInMins': 1,
        },
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == HttpStatus.ok) {
        final data = response.data;

        return serializers.deserializeWith(User.serializer, data) as User;
      } else {
        throw UnknownHttpException();
      }
    } on DioException catch (e) {
      _handleDioException(e);
    } catch (e) {
      throw UnknownHttpException();
    }
  }

  @override
  Future<void> refreshAccessToken() async {
    final dio = _ref.read(dioProvider);
    final tokenStorage = _ref.read(tokenStorageProvider);

    final refreshToken = await tokenStorage.getRefreshToken();
    if (refreshToken == null) {
      throw UnknownHttpException();
    }

    try {
      final response = await dio.post(
        HttpConstants.refresh,
        data: {'refreshToken': refreshToken, 'expiresInMins': 1},
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      if (response.statusCode == HttpStatus.ok) {
        final data = response.data;

        await tokenStorage.saveAccessToken(data['accessToken']);
        await tokenStorage.saveRefreshToken(data['refreshToken']);
      } else {
        throw UnknownHttpException();
      }
    } on DioException catch (e) {
      _handleDioException(e);
    } catch (e) {
      throw UnknownHttpException();
    }
  }
}

final authRepositoryProvider = Provider<IAuthRepository>(
  (ref) => AuthRepository(ref),
);
