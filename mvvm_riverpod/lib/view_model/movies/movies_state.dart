import 'package:mvvm_statemanagements/models/genres_model.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';

class MoviesState {

  final int currentPage;
  final List<MovieModel> moviesList;
  final List<GenreModel> genresList;
  final bool isLoading;
  final String fetchMoviesError;

  MoviesState({
    this.currentPage = 1,
    this.fetchMoviesError = "",
    this.genresList = const [],
    this.isLoading = false,
    this.moviesList = const [],
  });

  MoviesState copyWith({
    int? currentPage,
    List<MovieModel>? moviesList,
    List<GenreModel>? genresList,
    bool? isLoading,
    String? fetchMoviesError,

  }) {
    return MoviesState(
      currentPage: currentPage ?? this.currentPage,
      moviesList: moviesList ?? this.moviesList,
      genresList: genresList ?? this.genresList,
      isLoading: isLoading ?? this.isLoading,
      fetchMoviesError: fetchMoviesError ?? this.fetchMoviesError,
    );
  }
}