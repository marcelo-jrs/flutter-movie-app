import 'dart:convert';
import 'package:mvvm_statemanagements/models/movies_model.dart';
import 'package:mvvm_statemanagements/view_model/favorites/favorite_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'favorite_provider.g.dart';

@Riverpod(keepAlive: true)
class Favorites extends _$Favorites {
  static const _favsKey = "favsKey";

  @override
  FavoriteState build() {
    // Initial state
    return FavoriteState();
  }

  bool isFavorite(MovieModel movie) {
    return state.favoritesList.any((m) => m.id == movie.id);
  }

  Future<void> addOrRemoveFromFavorites(MovieModel movie) async {
    final wasFavorite = isFavorite(movie);
    final updatedList = wasFavorite
        ? state.favoritesList.where((m) => m.id != movie.id).toList()
        : [...state.favoritesList, movie];

    state = state.copyWith(favoritesList: updatedList);
    await saveFavorites();
  }

  Future<void> saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = state.favoritesList.map((m) => json.encode(m.toJson())).toList();
    await prefs.setStringList(_favsKey, encoded);
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getStringList(_favsKey) ?? [];
    final decoded = data.map((jsonStr) => MovieModel.fromJson(json.decode(jsonStr))).toList();
    state = state.copyWith(favoritesList: decoded);
  }

  Future<void> clearAllFavorites() async {
    state = state.copyWith(favoritesList: []);
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_favsKey);
  }
}
