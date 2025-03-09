import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/constants/http.dart';
import 'package:pndlm_assessment/repositories/auth/auth_repository.dart';
import 'package:pndlm_assessment/storages/token_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(BaseOptions(baseUrl: HttpConstants.baseUrl));

  final tokenStorage = ref.watch(tokenStorageProvider);

  dio.interceptors.add(LogInterceptor(responseBody: true));

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        // ! Adds accessToken to request headers on every request if available
        final accessToken = await tokenStorage.getAccessToken();

        if (accessToken != null) {
          options.headers['Authorization'] = 'Bearer $accessToken';
        }

        return handler.next(options);
      },
      onError: (DioException e, handler) async {
        // ! Refreshes accessToken and retries the request if the response status is unauthorized (401)
        if (e.response?.statusCode == HttpStatus.unauthorized) {
          await ref.read(authRepositoryProvider).refreshAccessToken();

          return handler.resolve(await dio.fetch(e.requestOptions));
        }

        return handler.next(e);
      },
    ),
  );

  return dio;
}
