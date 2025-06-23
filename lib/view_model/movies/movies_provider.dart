import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';
import 'package:mvvm_statemanagements/repository/movies_repo.dart';
import 'package:mvvm_statemanagements/service/init_getit.dart';
import 'package:mvvm_statemanagements/view_model/movies/movies_state.dart';

part 'movies_provider.g.dart'; // generated file

@riverpod
class Movies extends _$Movies {
  final MoviesRepository _moviesRepository = getIt<MoviesRepository>();

  @override
  MoviesState build() {
    return MoviesState(); // Initial state
  }

  Future<void> getMovies() async {
    if (state.isLoading) return;
    state = state.copyWith(isLoading: true);
    try {
      if (state.genresList.isEmpty) {
        final genresList = await _moviesRepository.fetchGenres();
        state = state.copyWith(genresList: genresList);
      }
      final movies = await _moviesRepository.fetchMovies(page: state.currentPage);
      state = state.copyWith(
        moviesList: [...state.moviesList, ...movies],
        currentPage: state.currentPage + 1,
        isLoading: false,
        fetchMoviesError: "",
      );
    } catch (e) {
      state = state.copyWith(fetchMoviesError: e.toString(), isLoading: false);
      rethrow;
    }
  }
}

@riverpod
MovieModel currentMovie(Ref ref, int index) {
  final movieState = ref.watch(moviesProvider);
  return movieState.moviesList[index];
}
