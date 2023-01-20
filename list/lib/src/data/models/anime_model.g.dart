// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeModel _$AnimeModelFromJson(Map<String, dynamic> json) => AnimeModel(
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      picture: json['picture'] as String,
      animeSeason: AnimeSeasonModel.fromJson(
          json['animeSeason'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AnimeModelToJson(AnimeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'picture': instance.picture,
      'animeSeason': instance.animeSeason,
    };
