import 'package:details/src/domain/entities/anime.dart';

abstract class AnimeDetailsRepository {
  Future<Anime> getAnime(String animeId);
}
