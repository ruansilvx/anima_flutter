// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
      title: json['title'] as String,
      type: json['type'] as String,
      status: json['status'] as String,
      picture: json['picture'] as String,
      animeSeason: AnimeSeasonModel.fromJson(
          json['animeSeason'] as Map<String, dynamic>),
      relations:
          (json['relations'] as List<dynamic>).map((e) => e as String).toList(),
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'status': instance.status,
      'picture': instance.picture,
      'animeSeason': instance.animeSeason,
      'relations': instance.relations,
      'tags': instance.tags,
    };
