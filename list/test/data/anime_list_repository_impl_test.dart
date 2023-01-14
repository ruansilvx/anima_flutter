import 'package:common/common.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:list/data/datasources/anime_list_remote_data_source.dart';
import 'package:list/data/mappers/anime_list_data_mappers.dart';
import 'package:list/data/models/anime_model.dart';
import 'package:list/data/repositories/anime_list_repository_impl.dart';
import 'package:list/domain/entities/anime.dart';
import 'package:list/domain/exceptions/exceptions.dart';

class MockAnimeListRemoteDataSource extends Mock
    implements AnimeListRemoteDataSource {}

void main() {
  late AnimeListRepositoryImpl animeListRepository;
  late MockAnimeListRemoteDataSource dataSourceMock;

  setUp(() {
    dataSourceMock = MockAnimeListRemoteDataSource();
    animeListRepository = AnimeListRepositoryImpl(dataSourceMock);
  });

  final anime = AnimeModel(
    id: 'id',
    title: 'title',
    type: AnimeType.unknown.name,
    thumbnail: 'thumbnail',
  );

  test('Successfully get anime list', () async {
    when(
      () => dataSourceMock.getAnimeList(
        page: any(named: 'page'),
        limit: any(named: 'limit'),
        searchQuery: any(
          named: 'searchQuery',
        ),
      ),
    ).thenAnswer((_) async => [anime]);

    final list = await animeListRepository.getAnimeList();

    verify(() => dataSourceMock.getAnimeList()).called(1);

    expect(list, [anime.toDomain()]);
  });

  test('Fail to get anime list', () async {
    when(
      () => dataSourceMock.getAnimeList(
        page: any(named: 'page'),
        limit: any(named: 'limit'),
        searchQuery: any(
          named: 'searchQuery',
        ),
      ),
    ).thenThrow(Exception());

    verifyNever(() => dataSourceMock.getAnimeList());

    expect(
      () => animeListRepository.getAnimeList(),
      throwsA(
        isA<ListFetchFailedException>(),
      ),
    );
  });
}
