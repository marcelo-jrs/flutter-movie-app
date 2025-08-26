import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mvvm_statemanagements/models/genres_model.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';

part 'movies_state.freezed.dart';
// part 'movies_state.g.dart';

@freezed
abstract class MoviesState with _$MoviesState{
  factory MoviesState({
    @Default(1) final int currentPage,
    @Default([]) final List<MovieModel> moviesList,
    @Default([]) final List<GenreModel> genresList,
    @Default(false) final bool isLoading,
    @Default("") final String fetchMoviesError,
  }) = _MoviesState;
}