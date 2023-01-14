import 'package:list/data/models/anime_model.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class AnimeListRemoteDataSource {
  final Dio _dio;

  AnimeListRemoteDataSource(this._dio);

  Future<List<AnimeModel>> getAnimeList({
    int? page,
    int? limit,
    String? searchQuery,
  }) async {
    final response = await _dio.get(
      '/anime',
      queryParameters: {
        'post': page,
        'limit': limit,
        'searchQuery': searchQuery,
      },
    );
    final list = (response as List).map((json) {
      final id = json.keys.first;
      return AnimeModel.fromJson(json.add({'id': id}));
    }).toList();
    return list;
  }
}
