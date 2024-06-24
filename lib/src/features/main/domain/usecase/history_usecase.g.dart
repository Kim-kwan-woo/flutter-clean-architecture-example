// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getHistoryHash() => r'279df51102a96130345cbb64fb6f0b520baf867c';

/// See also [getHistory].
@ProviderFor(getHistory)
final getHistoryProvider = AutoDisposeFutureProvider<List<String>>.internal(
  getHistory,
  name: r'getHistoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getHistoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetHistoryRef = AutoDisposeFutureProviderRef<List<String>>;
String _$setHistoryHash() => r'e6fcace182eae8b16045816d5ba7aedf069538a0';

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

/// See also [setHistory].
@ProviderFor(setHistory)
const setHistoryProvider = SetHistoryFamily();

/// See also [setHistory].
class SetHistoryFamily extends Family<AsyncValue<bool>> {
  /// See also [setHistory].
  const SetHistoryFamily();

  /// See also [setHistory].
  SetHistoryProvider call({
    required List<String> history,
  }) {
    return SetHistoryProvider(
      history: history,
    );
  }

  @override
  SetHistoryProvider getProviderOverride(
    covariant SetHistoryProvider provider,
  ) {
    return call(
      history: provider.history,
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
  String? get name => r'setHistoryProvider';
}

/// See also [setHistory].
class SetHistoryProvider extends AutoDisposeFutureProvider<bool> {
  /// See also [setHistory].
  SetHistoryProvider({
    required List<String> history,
  }) : this._internal(
          (ref) => setHistory(
            ref as SetHistoryRef,
            history: history,
          ),
          from: setHistoryProvider,
          name: r'setHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setHistoryHash,
          dependencies: SetHistoryFamily._dependencies,
          allTransitiveDependencies:
              SetHistoryFamily._allTransitiveDependencies,
          history: history,
        );

  SetHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.history,
  }) : super.internal();

  final List<String> history;

  @override
  Override overrideWith(
    FutureOr<bool> Function(SetHistoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetHistoryProvider._internal(
        (ref) => create(ref as SetHistoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        history: history,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<bool> createElement() {
    return _SetHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetHistoryProvider && other.history == history;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, history.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetHistoryRef on AutoDisposeFutureProviderRef<bool> {
  /// The parameter `history` of this provider.
  List<String> get history;
}

class _SetHistoryProviderElement extends AutoDisposeFutureProviderElement<bool>
    with SetHistoryRef {
  _SetHistoryProviderElement(super.provider);

  @override
  List<String> get history => (origin as SetHistoryProvider).history;
}

String _$clearHistoryHash() => r'dba056b9a5a10333830a5f61036d5368bd09b73e';

/// See also [clearHistory].
@ProviderFor(clearHistory)
final clearHistoryProvider = AutoDisposeFutureProvider<void>.internal(
  clearHistory,
  name: r'clearHistoryProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$clearHistoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ClearHistoryRef = AutoDisposeFutureProviderRef<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
