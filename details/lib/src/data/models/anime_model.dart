import 'package:details/src/data/models/anime_season_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'anime_model.g.dart';

@JsonSerializable()
class AnimeModel {
  final String id;
  final String title;
  final String type;
  final String status;
  final String picture;
  final AnimeSeasonModel animeSeason;
  final List<String> relations;
  final List<String> tags;

  const AnimeModel({
    required this.id,
    required this.title,
    required this.type,
    required this.status,
    required this.picture,
    required this.animeSeason,
    required this.relations,
    required this.tags,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}
