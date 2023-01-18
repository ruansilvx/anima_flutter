// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_season_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSeasonModel _$AnimeSeasonModelFromJson(Map<String, dynamic> json) =>
    AnimeSeasonModel(
      season: json['season'] as String,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$AnimeSeasonModelToJson(AnimeSeasonModel instance) =>
    <String, dynamic>{
      'year': instance.year,
      'season': instance.season,
    };
