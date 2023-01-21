import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_season.freezed.dart';

@freezed
class AnimeSeason with _$AnimeSeason {
  const factory AnimeSeason({
    required AnimeSeasonType season,
    int? year,
  }) = _AnimeSeason;
}

enum AnimeSeasonType { spring, summer, fall, winter, undefined }
