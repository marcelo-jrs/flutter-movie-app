import 'package:freezed_annotation/freezed_annotation.dart';

part 'genres_model.freezed.dart';
part 'genres_model.g.dart';

@freezed
abstract class GenreModel with _$GenreModel {
  factory GenreModel({
    required int id,
    required String name,
  }) = _GenreModel;

  factory GenreModel.fromJson(Map<String, dynamic> json) => _$GenreModelFromJson(json);

}