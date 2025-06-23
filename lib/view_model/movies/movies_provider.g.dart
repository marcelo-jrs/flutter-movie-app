// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentMovieHash() => r'16ab76fd04df1714391bb4fd4418ad4a7a84cf2e';

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

/// See also [currentMovie].
@ProviderFor(currentMovie)
const currentMovieProvider = CurrentMovieFamily();

/// See also [currentMovie].
class CurrentMovieFamily extends Family<MovieModel> {
  /// See also [currentMovie].
  const CurrentMovieFamily();

  /// See also [currentMovie].
  CurrentMovieProvider call(
    int index,
  ) {
    return CurrentMovieProvider(
      index,
    );
  }

  @override
  CurrentMovieProvider getProviderOverride(
    covariant CurrentMovieProvider provider,
  ) {
    return call(
      provider.index,
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
  String? get name => r'currentMovieProvider';
}

/// See also [currentMovie].
class CurrentMovieProvider extends AutoDisposeProvider<MovieModel> {
  /// See also [currentMovie].
  CurrentMovieProvider(
    int index,
  ) : this._internal(
          (ref) => currentMovie(
            ref as CurrentMovieRef,
            index,
          ),
          from: currentMovieProvider,
          name: r'currentMovieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$currentMovieHash,
          dependencies: CurrentMovieFamily._dependencies,
          allTransitiveDependencies:
              CurrentMovieFamily._allTransitiveDependencies,
          index: index,
        );

  CurrentMovieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final int index;

  @override
  Override overrideWith(
    MovieModel Function(CurrentMovieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CurrentMovieProvider._internal(
        (ref) => create(ref as CurrentMovieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<MovieModel> createElement() {
    return _CurrentMovieProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CurrentMovieProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CurrentMovieRef on AutoDisposeProviderRef<MovieModel> {
  /// The parameter `index` of this provider.
  int get index;
}

class _CurrentMovieProviderElement
    extends AutoDisposeProviderElement<MovieModel> with CurrentMovieRef {
  _CurrentMovieProviderElement(super.provider);

  @override
  int get index => (origin as CurrentMovieProvider).index;
}

String _$moviesHash() => r'816ad0fb4e434bcba2006f3995298610a693e989';

/// See also [Movies].
@ProviderFor(Movies)
final moviesProvider =
    AutoDisposeNotifierProvider<Movies, MoviesState>.internal(
  Movies.new,
  name: r'moviesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$moviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Movies = AutoDisposeNotifier<MoviesState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
