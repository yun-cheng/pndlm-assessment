import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/models/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_state_provider.g.dart';

@riverpod
class AuthStateNotifier extends _$AuthStateNotifier {
  @override
  AuthState build() {
    return AuthState();
  }

  void updateAccount(String value) {
    state = state.rebuild(
      (b) =>
          b
            ..account = value
            ..isInvalidCredentials = false,
    );
  }

  void updatePassword(String value) {
    state = state.rebuild(
      (b) =>
          b
            ..password = value
            ..isInvalidCredentials = false,
    );
  }
}

@riverpod
bool isValidating(Ref ref) {
  return ref.watch(
    authStateNotifierProvider.select((state) => state.isValidating),
  );
}

@riverpod
bool isInvalidCredentials(Ref ref) {
  return ref.watch(
    authStateNotifierProvider.select((state) => state.isInvalidCredentials),
  );
}
