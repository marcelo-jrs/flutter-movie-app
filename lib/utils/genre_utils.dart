import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/models/genres_model.dart';
import 'package:mvvm_statemanagements/view_model/movies/movies_provider.dart';

class GenreUtils {
  static List<GenreModel> movieGenresNames(List<int> genreIds, WidgetRef ref) {
    final movieState = ref.watch(moviesProvider);
    // final moviesRepository = getIt<MoviesRepository>();
    final cachedGenres = movieState.genresList;
    List<GenreModel> genresNames = [];
    for (var genreId in genreIds) {
      var genre = cachedGenres.firstWhere(
        (g) => g.id == genreId,
        orElse: () => GenreModel(id: 5448484, name: 'Unknown'),
      );
      genresNames.add(genre);
    }
    return genresNames;
  }
}
