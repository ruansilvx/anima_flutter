import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/domain/repositories/anime_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetAnime {
  final AnimeDetailsRepository _animeDetailsRepository;

  GetAnime(this._animeDetailsRepository);

  Future<Anime> call(String animeId) {
    return _animeDetailsRepository.getAnime(animeId);
  }
}
