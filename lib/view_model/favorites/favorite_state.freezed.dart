// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteState {
  List<MovieModel> get favoritesList;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      _$FavoriteStateCopyWithImpl<FavoriteState>(
          this as FavoriteState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteState &&
            const DeepCollectionEquality()
                .equals(other.favoritesList, favoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(favoritesList));

  @override
  String toString() {
    return 'FavoriteState(favoritesList: $favoritesList)';
  }
}

/// @nodoc
abstract mixin class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) _then) =
      _$FavoriteStateCopyWithImpl;
  @useResult
  $Res call({List<MovieModel> favoritesList});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._self, this._then);

  final FavoriteState _self;
  final $Res Function(FavoriteState) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoritesList = null,
  }) {
    return _then(_self.copyWith(
      favoritesList: null == favoritesList
          ? _self.favoritesList
          : favoritesList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

/// @nodoc

class _FavoriteState implements FavoriteState {
  _FavoriteState({final List<MovieModel> favoritesList = const []})
      : _favoritesList = favoritesList;

  final List<MovieModel> _favoritesList;
  @override
  @JsonKey()
  List<MovieModel> get favoritesList {
    if (_favoritesList is EqualUnmodifiableListView) return _favoritesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoritesList);
  }

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoriteStateCopyWith<_FavoriteState> get copyWith =>
      __$FavoriteStateCopyWithImpl<_FavoriteState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteState &&
            const DeepCollectionEquality()
                .equals(other._favoritesList, _favoritesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favoritesList));

  @override
  String toString() {
    return 'FavoriteState(favoritesList: $favoritesList)';
  }
}

/// @nodoc
abstract mixin class _$FavoriteStateCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$FavoriteStateCopyWith(
          _FavoriteState value, $Res Function(_FavoriteState) _then) =
      __$FavoriteStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<MovieModel> favoritesList});
}

/// @nodoc
class __$FavoriteStateCopyWithImpl<$Res>
    implements _$FavoriteStateCopyWith<$Res> {
  __$FavoriteStateCopyWithImpl(this._self, this._then);

  final _FavoriteState _self;
  final $Res Function(_FavoriteState) _then;

  /// Create a copy of FavoriteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favoritesList = null,
  }) {
    return _then(_FavoriteState(
      favoritesList: null == favoritesList
          ? _self._favoritesList
          : favoritesList // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
    ));
  }
}

// dart format on
