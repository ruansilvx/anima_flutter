import 'package:injectable/injectable.dart';
import 'package:list/src/data/datasources/anime_list_remote_data_source.dart';
import 'package:list/src/data/mappers/anime_list_data_mappers.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/domain/exceptions/exceptions.dart';
import 'package:list/src/domain/repositories/anime_list_repository.dart';

@Injectable(as: AnimeListRepository)
class AnimeListRepositoryImpl implements AnimeListRepository {
  final AnimeListRemoteDataSource _animeListRemoteDataSource;

  AnimeListRepositoryImpl(this._animeListRemoteDataSource);

  @override
  Future<List<Anime>> getAnimeList({
    int? page,
    int? limit,
    String? searchQuery,
  }) async {
    try {
      final modelList = await _animeListRemoteDataSource.getAnimeList(
        page: page,
        limit: limit,
        searchQuery: searchQuery,
      );
      return modelList.map((model) => model.toDomain()).toList();
    } catch (_) {
      throw ListFetchFailedException();
    }
  }
}
