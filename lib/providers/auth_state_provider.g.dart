// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$isValidatingHash() => r'a8dc5f64ca3459a58627d0adcff5e4d0eb71d76e';

/// See also [isValidating].
@ProviderFor(isValidating)
final isValidatingProvider = AutoDisposeProvider<bool>.internal(
  isValidating,
  name: r'isValidatingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$isValidatingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsValidatingRef = AutoDisposeProviderRef<bool>;
String _$isInvalidCredentialsHash() =>
    r'ec03cbd8e8495b3002d4bf2f23da7017fe1f3e2e';

/// See also [isInvalidCredentials].
@ProviderFor(isInvalidCredentials)
final isInvalidCredentialsProvider = AutoDisposeProvider<bool>.internal(
  isInvalidCredentials,
  name: r'isInvalidCredentialsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isInvalidCredentialsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef IsInvalidCredentialsRef = AutoDisposeProviderRef<bool>;
String _$authStateNotifierHash() => r'fab0b0a92d3183f117cfca9168e361d358a0a224';

/// See also [AuthStateNotifier].
@ProviderFor(AuthStateNotifier)
final authStateNotifierProvider =
    AutoDisposeNotifierProvider<AuthStateNotifier, AuthState>.internal(
  AuthStateNotifier.new,
  name: r'authStateNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$authStateNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AuthStateNotifier = AutoDisposeNotifier<AuthState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
