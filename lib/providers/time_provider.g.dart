// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$timeHash() => r'd71c25e6aa07d0647e3f5bb6395b61256f0c9355';

/// See also [time].
@ProviderFor(time)
final timeProvider = AutoDisposeStreamProvider<DateTime>.internal(
  time,
  name: r'timeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$timeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TimeRef = AutoDisposeStreamProviderRef<DateTime>;
String _$angleRadiansHash() => r'5ad9c5b48142df1533860d647cd9a86c51aea9ab';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [angleRadians].
@ProviderFor(angleRadians)
const angleRadiansProvider = AngleRadiansFamily();

/// See also [angleRadians].
class AngleRadiansFamily extends Family<double> {
  /// See also [angleRadians].
  const AngleRadiansFamily();

  /// See also [angleRadians].
  AngleRadiansProvider call({
    required ClockHandType type,
    required String location,
  }) {
    return AngleRadiansProvider(
      type: type,
      location: location,
    );
  }

  @override
  AngleRadiansProvider getProviderOverride(
    covariant AngleRadiansProvider provider,
  ) {
    return call(
      type: provider.type,
      location: provider.location,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'angleRadiansProvider';
}

/// See also [angleRadians].
class AngleRadiansProvider extends AutoDisposeProvider<double> {
  /// See also [angleRadians].
  AngleRadiansProvider({
    required ClockHandType type,
    required String location,
  }) : this._internal(
          (ref) => angleRadians(
            ref as AngleRadiansRef,
            type: type,
            location: location,
          ),
          from: angleRadiansProvider,
          name: r'angleRadiansProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$angleRadiansHash,
          dependencies: AngleRadiansFamily._dependencies,
          allTransitiveDependencies:
              AngleRadiansFamily._allTransitiveDependencies,
          type: type,
          location: location,
        );

  AngleRadiansProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.type,
    required this.location,
  }) : super.internal();

  final ClockHandType type;
  final String location;

  @override
  Override overrideWith(
    double Function(AngleRadiansRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AngleRadiansProvider._internal(
        (ref) => create(ref as AngleRadiansRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        type: type,
        location: location,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<double> createElement() {
    return _AngleRadiansProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AngleRadiansProvider &&
        other.type == type &&
        other.location == location;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);
    hash = _SystemHash.combine(hash, location.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AngleRadiansRef on AutoDisposeProviderRef<double> {
  /// The parameter `type` of this provider.
  ClockHandType get type;

  /// The parameter `location` of this provider.
  String get location;
}

class _AngleRadiansProviderElement extends AutoDisposeProviderElement<double>
    with AngleRadiansRef {
  _AngleRadiansProviderElement(super.provider);

  @override
  ClockHandType get type => (origin as AngleRadiansProvider).type;
  @override
  String get location => (origin as AngleRadiansProvider).location;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
