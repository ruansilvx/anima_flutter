import 'package:list/domain/entities/anime.dart';
import 'package:list/domain/repositories/anime_list_repository.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

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
