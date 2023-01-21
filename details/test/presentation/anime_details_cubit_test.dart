import 'package:bloc_test/bloc_test.dart';
import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/domain/entities/anime_season.dart';
import 'package:details/src/domain/use_cases/get_anime_use_case.dart';
import 'package:details/src/presentation/blocs/anime_details_cubit.dart';
import 'package:details/src/presentation/blocs/anime_details_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetAnimeUseCase extends Mock implements GetAnimeUseCase {}

void main() {
  late MockGetAnimeUseCase getAnimeUseCase;
  late AnimeDetailsCubit animeDetailsCubit;

  const anime = Anime(
    id: 'id',
    title: 'title',
    type: AnimeType.unknown,
    picture: 'thumbnail',
    season: AnimeSeason(
      year: 2023,
      season: AnimeSeasonType.undefined,
    ),
    status: AnimeStatus.unknown,
    relations: [],
    tags: [],
  );

  setUp(() {
    getAnimeUseCase = MockGetAnimeUseCase();
    animeDetailsCubit = AnimeDetailsCubit(getAnimeUseCase);
  });

  blocTest(
    'Successfully fetch anime details',
    build: () {
      when(() => getAnimeUseCase(any())).thenAnswer((_) async => anime);
      return animeDetailsCubit;
    },
    act: (bloc) => bloc.getAnime('id'),
    expect: () => [
      const AnimeDetailsState(status: AnimeDetailsStatus.loading),
      const AnimeDetailsState(status: AnimeDetailsStatus.success, anime: anime),
    ],
  );

  blocTest(
    'Failed to fetch anime details',
    build: () {
      when(() => getAnimeUseCase(any())).thenThrow(Exception());
      return animeDetailsCubit;
    },
    act: (bloc) => bloc.getAnime('id'),
    expect: () => [
      const AnimeDetailsState(status: AnimeDetailsStatus.loading),
      const AnimeDetailsState(status: AnimeDetailsStatus.error),
    ],
  );
}
