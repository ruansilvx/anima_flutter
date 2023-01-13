import 'package:common/common.dart';
import 'package:flutter/foundation.dart';

part 'anime.freezed.dart';

@freezed
class Anime with _$Anime {
  const factory Anime({
    required String id,
    required String title,
    required AnimeType type,
    required String thumbnail,
  }) = _Anime;
}

enum AnimeType { tv, movie, ova, ona, special, unknown }
