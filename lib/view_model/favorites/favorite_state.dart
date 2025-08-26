import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';

part 'favorite_state.freezed.dart';
// part 'movies_state.g.dart';

@freezed
abstract class FavoriteState with _$FavoriteState{
  factory FavoriteState({
    @Default([]) final List<MovieModel> favoritesList,
  }) = _FavoriteState;
}