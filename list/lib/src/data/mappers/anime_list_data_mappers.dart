import 'package:list/src/data/models/anime_model.dart';
import 'package:list/src/data/models/anime_season_model.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/domain/entities/anime_season.dart';

extension AnimeModelRemoteToDomainMappers on AnimeModel {
  Anime toDomain() => Anime(
        id: id,
        title: title,
        type: AnimeType.values.byName(type.toLowerCase()),
        picture: picture,
        season: animeSeason.toDomain(),
      );
}

extension AnimeSeasonModelRemoteToDomainMappers on AnimeSeasonModel {
  AnimeSeason toDomain() => AnimeSeason(
        year: year,
        season: AnimeSeasonType.values.byName(season.toLowerCase()),
      );
}
