import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/view_model/favorites/favortie_provider.dart';
import '../constants/my_app_icons.dart';
import '../widgets/movies/movies_widget.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesState = ref.watch(favoritesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Movies"),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(favoritesProvider.notifier).clearAllFavs();
            },
            icon: const Icon(
              MyAppIcons.delete,
              color: Colors.red,
            ),
          ),
        ],
      ),
      body: favoritesState.favoritesList.isEmpty
          ? const Center(
              child: Text(
                "No Favorites Added",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoritesState.favoritesList.length,
              itemBuilder: (context, index) {
                return MoviesWidget(
                  movieModel:
                      favoritesState.favoritesList.reversed.toList()[index],
                );
              },
            ),
    );
  }
}
