import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/constants/http.dart';
import 'package:pndlm_assessment/repositories/auth/auth_repository.dart';
import 'package:pndlm_assessment/storages/token_storage.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: HttpConstants.baseUrl));

  final tokenStorage = ref.watch(tokenStorageProvider);

  dio.interceptors.add(LogInterceptor(responseBody: true));

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final accessToken = await tokenStorage.getAccessToken();

        if (accessToken != null) {
          options.headers['Authorization'] = 'Bearer $accessToken';
        }

        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        if (e.response?.statusCode == HttpStatus.unauthorized) {
          await ref.read(authRepositoryProvider).refreshAccessToken();

          return handler.resolve(await dio.fetch(e.requestOptions));
        }

        return handler.next(e);
      },
    ),
  );

  return dio;
});
