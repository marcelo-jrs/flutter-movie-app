import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/view_model/favorites/favorite_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/movies_model.dart';

final favoritesProvider =
    StateNotifierProvider<FavoritesProvider, FavoriteState>(
  (_) => FavoritesProvider(),
);

class FavoritesProvider extends StateNotifier<FavoriteState> {
  FavoritesProvider() : super(FavoriteState());

  final favskey = "favsKey";

  bool isFavorite(MovieModel movieModel) {
    return state.favoritesList.any((movie) => movie.id == movieModel.id);
  }

  Future<void> addOrRemoveFromFavorites(MovieModel movieModel) async {
    bool wasFavorite = isFavorite(movieModel);
    List<MovieModel> updatedFavorites = wasFavorite
        ? state.favoritesList
            .where(
              (element) => element.id != movieModel.id,
            )
            .toList()
        : [...state.favoritesList, movieModel];

    state = state.copyWith(favoritesList: updatedFavorites);
    // if (isFavorite(movieModel)) {
    //   state.favoritesList.removeWhere((movie) => movie.id == movieModel.id);
    // } else {
    //   state.favoritesList.add(movieModel);
    // }
    await saveFavorites();
  }

  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final stringList = state.favoritesList
        .map((movie) => json.encode(movie.toJson()))
        .toList();
    prefs.setStringList(favskey, stringList);
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final stringList = prefs.getStringList(favskey) ?? [];
    final movies = stringList.map((movie) => MovieModel.fromJson(json.decode(movie)));
    state = state.copyWith(favoritesList: movies.toList());
  }

  void clearAllFavs() {
    state = state.copyWith(favoritesList: []);
    saveFavorites();
  }
}
