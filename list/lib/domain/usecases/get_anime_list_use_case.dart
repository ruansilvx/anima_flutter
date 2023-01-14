import 'package:common/common.dart';
import 'package:list/domain/entities/anime.dart';
import 'package:list/domain/repositories/anime_list_repository.dart';

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
