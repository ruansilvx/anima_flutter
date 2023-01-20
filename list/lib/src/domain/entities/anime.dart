import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list/src/domain/entities/anime_season.dart';

part 'anime.freezed.dart';

@freezed
class Anime with _$Anime {
  const factory Anime({
    required String id,
    required String title,
    required AnimeType type,
    required String picture,
    required AnimeSeason season,
  }) = _Anime;
}

enum AnimeType { tv, movie, ova, ona, special, unknown }
