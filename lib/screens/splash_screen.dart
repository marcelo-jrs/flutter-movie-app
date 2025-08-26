import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/screens/movies_screen.dart';
import 'package:mvvm_statemanagements/service/init_getit.dart';
import 'package:mvvm_statemanagements/service/navigation_service.dart';
import 'package:mvvm_statemanagements/view_model/favorites/favorite_provider.dart';
import 'package:mvvm_statemanagements/view_model/movies/movies_provider.dart';
import 'package:mvvm_statemanagements/widgets/my_error_widget.dart';

final initializatinProvider = FutureProvider.autoDispose<void>((ref) async {
  ref.keepAlive();
  await Future.microtask(() async {
    await ref.read(moviesProvider.notifier).getMovies();
    await ref.read(favoritesProvider.notifier).loadFavorites();
  });
  
});

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initWatch = ref.watch(initializatinProvider);
    return Scaffold(
      body: initWatch.when(loading: () { 
        return const Center(child: CircularProgressIndicator.adaptive());
      }, error: (error, _) {
        debugPrint("❌ SplashScreen error: $error");
        return MyErrorWidget(
            errorText: error.toString(),
            retryFunction: () => ref.refresh(initializatinProvider));
      }, data: (_) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          getIt<NavigationService>().navigateReplace(const MoviesScreen());
        });
        return SizedBox.shrink();
      }),
    );
  }
}

