import 'package:list/data/models/anime_model.dart';
import 'package:list/domain/entities/anime.dart';

extension RemoteToDomainMappers on AnimeModel {
  Anime toDomain() => Anime(
        id: id,
        title: title,
        type: AnimeType.values.byName(type),
        thumbnail: thumbnail,
      );
}
