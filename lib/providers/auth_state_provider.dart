import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/models/auth_state.dart';
import 'package:pndlm_assessment/utils/account_validator.dart';
import 'package:pndlm_assessment/utils/password_validator.dart';
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

  void updateRememberMe(bool value) {
    state = state.rebuild((b) => b..shouldRememberUser = value);
  }

  Future<void> handleLogin() async {
    state = state.rebuild(
      (b) =>
          b
            ..isValidating = true
            ..errorMessage = '',
    );

    final account = state.account;
    final password = state.password;

    if (accountValidator(account) != null ||
        passwordValidator(password) != null) {
      return;
    }

    state = state.rebuild((b) => b..isLoading = true);

    state = AuthState();
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

@riverpod
bool authIsLoading(Ref ref) {
  return ref.watch(
    authStateNotifierProvider.select((state) => state.isLoading),
  );
}
