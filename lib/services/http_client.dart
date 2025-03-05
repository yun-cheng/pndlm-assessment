import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/constants/http.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(baseUrl: HttpConstants.baseUrl));

  dio.interceptors.add(LogInterceptor(responseBody: true));

  return dio;
});
