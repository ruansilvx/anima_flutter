import 'package:injectable/injectable.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/domain/repositories/anime_list_repository.dart';

@injectable
class GetAnimeListUseCase {
  final AnimeListRepository _animeListRepository;

  GetAnimeListUseCase(this._animeListRepository);

  Future<List<Anime>> call({int? page, int? limit, String? searchQuery}) {
    return _animeListRepository.getAnimeList(
      page: page,
      limit: limit,
      searchQuery: searchQuery,
    );
  }
}
