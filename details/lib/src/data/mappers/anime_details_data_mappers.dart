import 'package:details/src/data/models/anime_model.dart';
import 'package:details/src/data/models/anime_season_model.dart';
import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/domain/entities/anime_season.dart';

extension AnimeModelRemoteToDomainMappers on AnimeModel {
  Anime toDomain() => Anime(
        id: id,
        title: title,
        status: AnimeStatus.values.byName(status.toLowerCase()),
        type: AnimeType.values.byName(type.toLowerCase()),
        picture: picture,
        season: animeSeason.toDomain(),
        relations: relations,
        tags: tags,
      );
}

extension AnimeSeasonModelRemoteToDomainMappers on AnimeSeasonModel {
  AnimeSeason toDomain() => AnimeSeason(
        year: year,
        season: AnimeSeasonType.values.byName(season.toLowerCase()),
      );
}
