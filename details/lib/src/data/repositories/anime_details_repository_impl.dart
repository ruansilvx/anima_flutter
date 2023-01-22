import 'package:details/src/data/data_sources/anime_details_remote_data_source.dart';
import 'package:details/src/data/mappers/anime_details_data_mappers.dart';
import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/domain/exceptions/exceptions.dart';
import 'package:details/src/domain/repositories/anime_details_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AnimeDetailsRepository)
class AnimeDetailsRepositoryImpl implements AnimeDetailsRepository {
  final AnimeDetailsRemoteDataSource _animeDetailsRemoteDataSource;

  AnimeDetailsRepositoryImpl(this._animeDetailsRemoteDataSource);

  @override
  Future<Anime> getAnime(String animeId) async {
    try {
      final animeModel = await _animeDetailsRemoteDataSource.getAnime(animeId);
      return animeModel.toDomain();
    } catch (_) {
      throw DetailsFetchFailedException();
    }
  }
}
