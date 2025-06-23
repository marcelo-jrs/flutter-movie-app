// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoviesState {
  int get currentPage;
  List<MovieModel> get moviesList;
  List<GenreModel> get genresList;
  bool get isLoading;
  String get fetchMoviesError;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      _$MoviesStateCopyWithImpl<MoviesState>(this as MoviesState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MoviesState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other.moviesList, moviesList) &&
            const DeepCollectionEquality()
                .equals(other.genresList, genresList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.fetchMoviesError, fetchMoviesError) ||
                other.fetchMoviesError == fetchMoviesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(moviesList),
      const DeepCollectionEquality().hash(genresList),
      isLoading,
      fetchMoviesError);

  @override
  String toString() {
    return 'MoviesState(currentPage: $currentPage, moviesList: $moviesList, genresList: $genresList, isLoading: $isLoading, fetchMoviesError: $fetchMoviesError)';
  }
}

/// @nodoc
abstract mixin class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) _then) =
      _$MoviesStateCopyWithImpl;
  @useResult
  $Res call(
      {int currentPage,
      List<MovieModel> moviesList,
      List<GenreModel> genresList,
      bool isLoading,
      String fetchMoviesError});
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res> implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._self, this._then);

  final MoviesState _self;
  final $Res Function(MoviesState) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? moviesList = null,
    Object? genresList = null,
    Object? isLoading = null,
    Object? fetchMoviesError = null,
  }) {
    return _then(_self.copyWith(
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      moviesList: null == moviesList
          ? _self.moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      genresList: null == genresList
          ? _self.genresList
          : genresList // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoviesError: null == fetchMoviesError
          ? _self.fetchMoviesError
          : fetchMoviesError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _MoviesState implements MoviesState {
  _MoviesState(
      {this.currentPage = 1,
      final List<MovieModel> moviesList = const [],
      final List<GenreModel> genresList = const [],
      this.isLoading = false,
      this.fetchMoviesError = ""})
      : _moviesList = moviesList,
        _genresList = genresList;

  @override
  @JsonKey()
  final int currentPage;
  final List<MovieModel> _moviesList;
  @override
  @JsonKey()
  List<MovieModel> get moviesList {
    if (_moviesList is EqualUnmodifiableListView) return _moviesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_moviesList);
  }

  final List<GenreModel> _genresList;
  @override
  @JsonKey()
  List<GenreModel> get genresList {
    if (_genresList is EqualUnmodifiableListView) return _genresList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genresList);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String fetchMoviesError;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MoviesStateCopyWith<_MoviesState> get copyWith =>
      __$MoviesStateCopyWithImpl<_MoviesState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MoviesState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._moviesList, _moviesList) &&
            const DeepCollectionEquality()
                .equals(other._genresList, _genresList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.fetchMoviesError, fetchMoviesError) ||
                other.fetchMoviesError == fetchMoviesError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentPage,
      const DeepCollectionEquality().hash(_moviesList),
      const DeepCollectionEquality().hash(_genresList),
      isLoading,
      fetchMoviesError);

  @override
  String toString() {
    return 'MoviesState(currentPage: $currentPage, moviesList: $moviesList, genresList: $genresList, isLoading: $isLoading, fetchMoviesError: $fetchMoviesError)';
  }
}

/// @nodoc
abstract mixin class _$MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$MoviesStateCopyWith(
          _MoviesState value, $Res Function(_MoviesState) _then) =
      __$MoviesStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int currentPage,
      List<MovieModel> moviesList,
      List<GenreModel> genresList,
      bool isLoading,
      String fetchMoviesError});
}

/// @nodoc
class __$MoviesStateCopyWithImpl<$Res> implements _$MoviesStateCopyWith<$Res> {
  __$MoviesStateCopyWithImpl(this._self, this._then);

  final _MoviesState _self;
  final $Res Function(_MoviesState) _then;

  /// Create a copy of MoviesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentPage = null,
    Object? moviesList = null,
    Object? genresList = null,
    Object? isLoading = null,
    Object? fetchMoviesError = null,
  }) {
    return _then(_MoviesState(
      currentPage: null == currentPage
          ? _self.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      moviesList: null == moviesList
          ? _self._moviesList
          : moviesList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
      genresList: null == genresList
          ? _self._genresList
          : genresList // ignore: cast_nullable_to_non_nullable
              as List<GenreModel>,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      fetchMoviesError: null == fetchMoviesError
          ? _self.fetchMoviesError
          : fetchMoviesError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
