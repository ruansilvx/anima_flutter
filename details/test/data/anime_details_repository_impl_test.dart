import 'package:details/src/data/data_sources/anime_details_remote_data_source.dart';
import 'package:details/src/data/mappers/anime_details_data_mappers.dart';
import 'package:details/src/data/models/anime_model.dart';
import 'package:details/src/data/models/anime_season_model.dart';
import 'package:details/src/data/repositories/anime_details_repository_impl.dart';
import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/domain/entities/anime_season.dart';
import 'package:details/src/domain/exceptions/exceptions.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAnimeDetailsRemoteDataSource extends Mock
    implements AnimeDetailsRemoteDataSource {}

void main() {
  late AnimeDetailsRepositoryImpl animeDetailsRepository;
  late MockAnimeDetailsRemoteDataSource dataSourceMock;

  setUp(() {
    dataSourceMock = MockAnimeDetailsRemoteDataSource();
    animeDetailsRepository = AnimeDetailsRepositoryImpl(dataSourceMock);
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
    status: AnimeStatus.unknown.name,
    relations: [],
    tags: [],
  );

  test('Successfully get anime list', () async {
    when(
      () => dataSourceMock.getAnime(any()),
    ).thenAnswer((_) async => anime);

    final expectedAnime = await animeDetailsRepository.getAnime('id');

    verify(() => dataSourceMock.getAnime('id')).called(1);

    expect(expectedAnime, anime.toDomain());
  });

  test('Fail to get anime list', () async {
    when(
      () => dataSourceMock.getAnime(any()),
    ).thenThrow(Exception());

    verifyNever(() => dataSourceMock.getAnime('id'));

    expect(
      () => animeDetailsRepository.getAnime('id'),
      throwsA(
        isA<DetailsFetchFailedException>(),
      ),
    );
  });
}
