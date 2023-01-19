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
    // Delay added so loadings can be observed
    await Future.delayed(const Duration(seconds: 1));
    final response = await _dio.get(
      '/anime',
      queryParameters: {
        if (page != null) 'page': page,
        if (limit != null) 'limit': limit,
        if (searchQuery != null) 'search': searchQuery,
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
