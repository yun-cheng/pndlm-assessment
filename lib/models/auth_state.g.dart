// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AuthState extends AuthState {
  @override
  final String account;
  @override
  final String password;
  @override
  final bool shouldRememberUser;
  @override
  final bool isValidating;
  @override
  final bool isLoading;
  @override
  final bool isInvalidCredentials;
  @override
  final String errorMessage;

  factory _$AuthState([void Function(AuthStateBuilder)? updates]) =>
      (new AuthStateBuilder()..update(updates))._build();

  _$AuthState._(
      {required this.account,
      required this.password,
      required this.shouldRememberUser,
      required this.isValidating,
      required this.isLoading,
      required this.isInvalidCredentials,
      required this.errorMessage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(account, r'AuthState', 'account');
    BuiltValueNullFieldError.checkNotNull(password, r'AuthState', 'password');
    BuiltValueNullFieldError.checkNotNull(
        shouldRememberUser, r'AuthState', 'shouldRememberUser');
    BuiltValueNullFieldError.checkNotNull(
        isValidating, r'AuthState', 'isValidating');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'AuthState', 'isLoading');
    BuiltValueNullFieldError.checkNotNull(
        isInvalidCredentials, r'AuthState', 'isInvalidCredentials');
    BuiltValueNullFieldError.checkNotNull(
        errorMessage, r'AuthState', 'errorMessage');
  }

  @override
  AuthState rebuild(void Function(AuthStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthStateBuilder toBuilder() => new AuthStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthState &&
        account == other.account &&
        password == other.password &&
        shouldRememberUser == other.shouldRememberUser &&
        isValidating == other.isValidating &&
        isLoading == other.isLoading &&
        isInvalidCredentials == other.isInvalidCredentials &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, shouldRememberUser.hashCode);
    _$hash = $jc(_$hash, isValidating.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jc(_$hash, isInvalidCredentials.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AuthState')
          ..add('account', account)
          ..add('password', password)
          ..add('shouldRememberUser', shouldRememberUser)
          ..add('isValidating', isValidating)
          ..add('isLoading', isLoading)
          ..add('isInvalidCredentials', isInvalidCredentials)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class AuthStateBuilder implements Builder<AuthState, AuthStateBuilder> {
  _$AuthState? _$v;

  String? _account;
  String? get account => _$this._account;
  set account(String? account) => _$this._account = account;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  bool? _shouldRememberUser;
  bool? get shouldRememberUser => _$this._shouldRememberUser;
  set shouldRememberUser(bool? shouldRememberUser) =>
      _$this._shouldRememberUser = shouldRememberUser;

  bool? _isValidating;
  bool? get isValidating => _$this._isValidating;
  set isValidating(bool? isValidating) => _$this._isValidating = isValidating;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  bool? _isInvalidCredentials;
  bool? get isInvalidCredentials => _$this._isInvalidCredentials;
  set isInvalidCredentials(bool? isInvalidCredentials) =>
      _$this._isInvalidCredentials = isInvalidCredentials;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  AuthStateBuilder();

  AuthStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _account = $v.account;
      _password = $v.password;
      _shouldRememberUser = $v.shouldRememberUser;
      _isValidating = $v.isValidating;
      _isLoading = $v.isLoading;
      _isInvalidCredentials = $v.isInvalidCredentials;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AuthState;
  }

  @override
  void update(void Function(AuthStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AuthState build() => _build();

  _$AuthState _build() {
    final _$result = _$v ??
        new _$AuthState._(
          account: BuiltValueNullFieldError.checkNotNull(
              account, r'AuthState', 'account'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'AuthState', 'password'),
          shouldRememberUser: BuiltValueNullFieldError.checkNotNull(
              shouldRememberUser, r'AuthState', 'shouldRememberUser'),
          isValidating: BuiltValueNullFieldError.checkNotNull(
              isValidating, r'AuthState', 'isValidating'),
          isLoading: BuiltValueNullFieldError.checkNotNull(
              isLoading, r'AuthState', 'isLoading'),
          isInvalidCredentials: BuiltValueNullFieldError.checkNotNull(
              isInvalidCredentials, r'AuthState', 'isInvalidCredentials'),
          errorMessage: BuiltValueNullFieldError.checkNotNull(
              errorMessage, r'AuthState', 'errorMessage'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
