import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pndlm_assessment/exceptions/http_exceptions.dart';
import 'package:pndlm_assessment/models/auth_state.dart';
import 'package:pndlm_assessment/repositories/auth/auth_repository.dart';
import 'package:pndlm_assessment/storages/token_storage.dart';
import 'package:pndlm_assessment/utils/account_validator.dart';
import 'package:pndlm_assessment/utils/password_validator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_provider.dart';

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
    final shouldRememberUser = state.shouldRememberUser;

    if (accountValidator(account) != null ||
        passwordValidator(password) != null) {
      return;
    }

    state = state.rebuild((b) => b..isLoading = true);

    try {
      final authRepository = ref.read(authRepositoryProvider);
      final user = await authRepository.login(
        account: account,
        password: password,
        shouldRememberUser: shouldRememberUser,
      );

      await ref.read(userNotifierProvider.notifier).updateUser(user);

      state = AuthState();
    } catch (e) {
      state = state.rebuild(
        (b) =>
            b
              ..isLoading = false
              ..isInvalidCredentials = e is InvalidCredentialsException
              ..errorMessage =
                  e is InvalidCredentialsException ? '' : e.toString(),
      );
    }
  }

  Future<void> handleLogout() async {
    state = state.rebuild((b) => b..isLoading = true);

    await ref.read(userNotifierProvider.notifier).clearUser();

    final tokenStorage = ref.read(tokenStorageProvider);
    await tokenStorage.clearTokens();

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

@riverpod
String authErrorMessage(Ref ref) {
  return ref.watch(
    authStateNotifierProvider.select((state) => state.errorMessage),
  );
}
