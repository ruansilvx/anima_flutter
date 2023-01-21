import 'package:details/src/domain/entities/anime_season.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';

@freezed
class Anime with _$Anime {
  const factory Anime({
    required String id,
    required String title,
    required AnimeType type,
    required AnimeStatus status,
    required String picture,
    required AnimeSeason season,
    required List<String> relations,
    required List<String> tags,
  }) = _Anime;
}

enum AnimeType { tv, movie, ova, ona, special, unknown }

enum AnimeStatus { finished, ongoing, upcoming, unknown }
