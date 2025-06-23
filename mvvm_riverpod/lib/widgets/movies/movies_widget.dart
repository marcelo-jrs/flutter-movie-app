import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_statemanagements/constants/my_app_icons.dart';
import 'package:mvvm_statemanagements/models/movies_model.dart';
import 'package:mvvm_statemanagements/screens/movies_details.dart';
import 'package:mvvm_statemanagements/service/init_getit.dart';
import 'package:mvvm_statemanagements/service/navigation_service.dart';
import 'package:mvvm_statemanagements/widgets/cached_network_image.dart';
import 'package:mvvm_statemanagements/widgets/movies/favorite_btn.dart';
import 'package:mvvm_statemanagements/widgets/movies/genres_widget.dart';

class MoviesWidget extends ConsumerWidget {
  const MoviesWidget({
    super.key,
    // required this.index,
    required this.movieModel
  });

  final MovieModel movieModel;
  // final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final movieModel = ref.watch(currentMovie(index));
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          borderRadius: BorderRadius.circular(12.0),
          onTap: () {
            getIt<NavigationService>().navigate(MovieDetailsScreen(movieModel: movieModel));
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IntrinsicWidth(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: CachedImageWidget(
                      imgUrl: "https://image.tmdb.org/t/p/w500/${movieModel.posterPath}", 
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          movieModel.title,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 20,
                            ),
                            SizedBox(width: 5),
                            Text("${movieModel.voteAverage.toStringAsFixed(1)}/10"),
                          ],
                        ),
                        const SizedBox(height: 10),
                        GenresWidget(
                            movieModel: movieModel
                            ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              MyAppIcons.watchLaterOutlined,
                              size: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              movieModel.releaseDate,
                              style: TextStyle(color: Colors.grey),
                            ),
                            const Spacer(),
                            FavoriteBtnWidget(
                                movieModel: movieModel,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
