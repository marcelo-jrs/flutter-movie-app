// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieModel {
  bool get adult;
  String get backdrop_path;
  List<int> get genre_ids;
  int get id;
  String get original_language;
  String get original_title;
  String get overview;
  double get popularity;
  String get poster_path;
  String get release_date;
  String get title;
  bool get video;
  double get vote_average;
  int get vote_count;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MovieModelCopyWith<MovieModel> get copyWith =>
      _$MovieModelCopyWithImpl<MovieModel>(this as MovieModel, _$identity);

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MovieModel &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path) &&
            const DeepCollectionEquality().equals(other.genre_ids, genre_ids) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_language, original_language) ||
                other.original_language == original_language) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average) &&
            (identical(other.vote_count, vote_count) ||
                other.vote_count == vote_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdrop_path,
      const DeepCollectionEquality().hash(genre_ids),
      id,
      original_language,
      original_title,
      overview,
      popularity,
      poster_path,
      release_date,
      title,
      video,
      vote_average,
      vote_count);

  @override
  String toString() {
    return 'MovieModel(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }
}

/// @nodoc
abstract mixin class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) _then) =
      _$MovieModelCopyWithImpl;
  @useResult
  $Res call(
      {bool adult,
      String backdrop_path,
      List<int> genre_ids,
      int id,
      String original_language,
      String original_title,
      String overview,
      double popularity,
      String poster_path,
      String release_date,
      String title,
      bool video,
      double vote_average,
      int vote_count});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res> implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._self, this._then);

  final MovieModel _self;
  final $Res Function(MovieModel) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdrop_path = null,
    Object? genre_ids = null,
    Object? id = null,
    Object? original_language = null,
    Object? original_title = null,
    Object? overview = null,
    Object? popularity = null,
    Object? poster_path = null,
    Object? release_date = null,
    Object? title = null,
    Object? video = null,
    Object? vote_average = null,
    Object? vote_count = null,
  }) {
    return _then(_self.copyWith(
      adult: null == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: null == backdrop_path
          ? _self.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      genre_ids: null == genre_ids
          ? _self.genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_language: null == original_language
          ? _self.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: null == original_title
          ? _self.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      poster_path: null == poster_path
          ? _self.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: null == release_date
          ? _self.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: null == vote_average
          ? _self.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
      vote_count: null == vote_count
          ? _self.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MovieModel implements MovieModel {
  _MovieModel(
      {required this.adult,
      required this.backdrop_path,
      required final List<int> genre_ids,
      required this.id,
      required this.original_language,
      required this.original_title,
      required this.overview,
      required this.popularity,
      required this.poster_path,
      required this.release_date,
      required this.title,
      required this.video,
      required this.vote_average,
      required this.vote_count})
      : _genre_ids = genre_ids;
  factory _MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  @override
  final bool adult;
  @override
  final String backdrop_path;
  final List<int> _genre_ids;
  @override
  List<int> get genre_ids {
    if (_genre_ids is EqualUnmodifiableListView) return _genre_ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genre_ids);
  }

  @override
  final int id;
  @override
  final String original_language;
  @override
  final String original_title;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String poster_path;
  @override
  final String release_date;
  @override
  final String title;
  @override
  final bool video;
  @override
  final double vote_average;
  @override
  final int vote_count;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MovieModelCopyWith<_MovieModel> get copyWith =>
      __$MovieModelCopyWithImpl<_MovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MovieModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieModel &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdrop_path, backdrop_path) ||
                other.backdrop_path == backdrop_path) &&
            const DeepCollectionEquality()
                .equals(other._genre_ids, _genre_ids) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.original_language, original_language) ||
                other.original_language == original_language) &&
            (identical(other.original_title, original_title) ||
                other.original_title == original_title) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.poster_path, poster_path) ||
                other.poster_path == poster_path) &&
            (identical(other.release_date, release_date) ||
                other.release_date == release_date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.vote_average, vote_average) ||
                other.vote_average == vote_average) &&
            (identical(other.vote_count, vote_count) ||
                other.vote_count == vote_count));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdrop_path,
      const DeepCollectionEquality().hash(_genre_ids),
      id,
      original_language,
      original_title,
      overview,
      popularity,
      poster_path,
      release_date,
      title,
      video,
      vote_average,
      vote_count);

  @override
  String toString() {
    return 'MovieModel(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }
}

/// @nodoc
abstract mixin class _$MovieModelCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$MovieModelCopyWith(
          _MovieModel value, $Res Function(_MovieModel) _then) =
      __$MovieModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool adult,
      String backdrop_path,
      List<int> genre_ids,
      int id,
      String original_language,
      String original_title,
      String overview,
      double popularity,
      String poster_path,
      String release_date,
      String title,
      bool video,
      double vote_average,
      int vote_count});
}

/// @nodoc
class __$MovieModelCopyWithImpl<$Res> implements _$MovieModelCopyWith<$Res> {
  __$MovieModelCopyWithImpl(this._self, this._then);

  final _MovieModel _self;
  final $Res Function(_MovieModel) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? adult = null,
    Object? backdrop_path = null,
    Object? genre_ids = null,
    Object? id = null,
    Object? original_language = null,
    Object? original_title = null,
    Object? overview = null,
    Object? popularity = null,
    Object? poster_path = null,
    Object? release_date = null,
    Object? title = null,
    Object? video = null,
    Object? vote_average = null,
    Object? vote_count = null,
  }) {
    return _then(_MovieModel(
      adult: null == adult
          ? _self.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdrop_path: null == backdrop_path
          ? _self.backdrop_path
          : backdrop_path // ignore: cast_nullable_to_non_nullable
              as String,
      genre_ids: null == genre_ids
          ? _self._genre_ids
          : genre_ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      original_language: null == original_language
          ? _self.original_language
          : original_language // ignore: cast_nullable_to_non_nullable
              as String,
      original_title: null == original_title
          ? _self.original_title
          : original_title // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _self.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _self.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      poster_path: null == poster_path
          ? _self.poster_path
          : poster_path // ignore: cast_nullable_to_non_nullable
              as String,
      release_date: null == release_date
          ? _self.release_date
          : release_date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _self.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      vote_average: null == vote_average
          ? _self.vote_average
          : vote_average // ignore: cast_nullable_to_non_nullable
              as double,
      vote_count: null == vote_count
          ? _self.vote_count
          : vote_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
