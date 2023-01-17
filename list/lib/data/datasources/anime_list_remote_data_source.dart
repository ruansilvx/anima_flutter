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
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (searchQuery != null) 'searchQuery': searchQuery,
      },
    );
    final list = (response.data as List).map((jsonList) {
      final id = jsonList[0];
      return AnimeModel.fromJson(
        Map.from(jsonList[1])..addAll({'id': id}),
      );
    }).toList();
    return list;
  }
}
