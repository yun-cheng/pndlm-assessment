import 'package:built_value/built_value.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  String get account;
  String get password;
  bool get shouldRememberUser;
  bool get isValidating;
  bool get isLoading;
  bool get isInvalidCredentials;
  String get errorMessage;

  AuthState._();

  factory AuthState() {
    return _$AuthState._(
      account: '',
      password: '',
      shouldRememberUser: false,
      isValidating: false,
      isLoading: false,
      isInvalidCredentials: false,
      errorMessage: '',
    );
  }
}
