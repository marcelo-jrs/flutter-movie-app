import 'package:mvvm_statemanagements/service/api_service.dart';

import '../models/genres_model.dart';
import '../models/movies_model.dart';

class MoviesRepository {
  final ApiService _apiService;
  MoviesRepository(this._apiService);

  Future<List<MovieModel>> fetchMovies({int page = 1}) async {
    return await _apiService.fetchMovies(page: page);
  }

  // List<GenreModel> cachedGenres = [];
  Future<List<GenreModel>> fetchGenres() async {
    // return cachedGenres = await _apiService.fetchGenres();
    return await _apiService.fetchGenres();
  }
}
