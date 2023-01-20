import 'package:json_annotation/json_annotation.dart';

part 'anime_season_model.g.dart';

@JsonSerializable()
class AnimeSeasonModel {
  final int? year;
  final String season;

  const AnimeSeasonModel({
    required this.season,
    this.year,
  });

  factory AnimeSeasonModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeSeasonModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeSeasonModelToJson(this);
}
