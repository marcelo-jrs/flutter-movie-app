import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies_model.freezed.dart';
part 'movies_model.g.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  factory MovieModel({
    required bool adult,
    required String backdrop_path,
    required List<int> genre_ids,
    required int id,
    required String original_language,
    required String original_title,
    required String overview,
    required double popularity,
    required String poster_path,
    required String release_date,
    required String title,
    required bool video,
    required double vote_average,
    required int vote_count,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) => _$MovieModelFromJson(json);

}
