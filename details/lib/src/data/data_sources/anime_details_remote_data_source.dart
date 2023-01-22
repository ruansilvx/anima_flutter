import 'package:details/src/data/models/anime_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AnimeDetailsRemoteDataSource {
  final Dio _dio;

  AnimeDetailsRemoteDataSource(this._dio);

  Future<AnimeModel> getAnime(String animeId) async {
    // Delay added so loadings can be observed
    await Future.delayed(const Duration(seconds: 1));
    final response = await _dio.get(
      '/anime/$animeId',
    );
    return AnimeModel.fromJson(response.data);
  }
}
