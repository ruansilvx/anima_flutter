import 'package:flutter_test/flutter_test.dart';
import 'package:list/src/data/datasources/anime_list_remote_data_source.dart';
import 'package:list/src/data/mappers/anime_list_data_mappers.dart';
import 'package:list/src/data/models/anime_model.dart';
import 'package:list/src/data/models/anime_season_model.dart';
import 'package:list/src/data/repositories/anime_list_repository_impl.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/domain/entities/anime_season.dart';
import 'package:list/src/domain/exceptions/exceptions.dart';
import 'package:mocktail/mocktail.dart';

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
    picture: 'thumbnail',
    animeSeason: AnimeSeasonModel(
      year: 2023,
      season: AnimeSeasonType.undefined.name,
    ),
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
