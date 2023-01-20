import 'package:list/src/domain/entities/anime.dart';

abstract class AnimeListRepository {
  Future<List<Anime>> getAnimeList({int? page, int? limit, String? searchQuery});
}