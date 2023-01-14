

import 'package:shared_dependencies/shared_dependencies.dart';

part 'anime_model.g.dart';

@JsonSerializable()
class AnimeModel {
  final String id;
  final String title;
  final String type;
  final String thumbnail;

  const AnimeModel({
    required this.id,
    required this.title,
    required this.type,
    required this.thumbnail,
  });

  factory AnimeModel.fromJson(Map<String, dynamic> json) =>
      _$AnimeModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeModelToJson(this);
}
