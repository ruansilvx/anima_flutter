import 'package:flutter_test/flutter_test.dart';
import 'package:list/domain/entities/anime.dart';
import 'package:list/domain/entities/anime_season.dart';
import 'package:list/domain/usecases/get_anime_list_use_case.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_bloc.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_event.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class MockGetAnimeListUseCase extends Mock implements GetAnimeListUseCase {}

void main() {
  late MockGetAnimeListUseCase getAnimeListUseCase;
  late AnimeListBloc animeListBloc;

  const anime1 = Anime(
    id: 'id',
    title: 'title',
    type: AnimeType.unknown,
    picture: 'thumbnail',
    season: AnimeSeason(year: 2023, season: AnimeSeasonType.undefined),
  );

  const anime2 = Anime(
    id: 'id2',
    title: 'title2',
    type: AnimeType.unknown,
    picture: 'thumbnail2',
    season: AnimeSeason(year: 2023, season: AnimeSeasonType.undefined),
  );

  const anime3 = Anime(
    id: 'id3',
    title: 'title3',
    type: AnimeType.unknown,
    picture: 'thumbnail3',
    season: AnimeSeason(year: 2023, season: AnimeSeasonType.undefined),
  );

  setUp(() {
    getAnimeListUseCase = MockGetAnimeListUseCase();
    animeListBloc = AnimeListBloc(getAnimeListUseCase);
  });

  blocTest(
    'Successfully fetch page',
    build: () {
      when(
        () => getAnimeListUseCase(
          page: any(named: 'page'),
        ),
      ).thenAnswer((_) async => [anime2]);
      return animeListBloc;
    },
    seed: () {
      return const AnimeListState(
        nextPage: 1,
        list: [anime1],
      );
    },
    act: (bloc) {
      bloc.add(FetchPage(page: 2));
    },
    expect: () => [
      const AnimeListState(
        nextPage: 3,
        list: [anime1, anime2],
      ),
    ],
  );

  blocTest(
    'Failed to fetch page',
    build: () {
      when(
        () => getAnimeListUseCase(
          page: any(named: 'page'),
        ),
      ).thenThrow(Exception());
      return animeListBloc;
    },
    seed: () {
      return const AnimeListState(
        nextPage: 1,
        list: [anime1],
      );
    },
    act: (bloc) {
      bloc.add(FetchPage(page: 2));
    },
    expect: () => [
      const AnimeListState(nextPage: 1, list: [anime1], error: true),
    ],
  );

  blocTest(
    'Reached last page',
    build: () {
      when(
        () => getAnimeListUseCase(
          page: any(named: 'page'),
          limit: any(named: 'limit'),
        ),
      ).thenAnswer((_) async => [anime3]);
      return animeListBloc;
    },
    seed: () {
      return const AnimeListState(
        nextPage: 1,
        list: [anime1, anime2],
        limit: 2,
      );
    },
    act: (bloc) {
      bloc.add(FetchPage(page: 2));
    },
    expect: () => [
      const AnimeListState(
        nextPage: null,
        list: [anime1, anime2, anime3],
        limit: 2,
      ),
    ],
  );

  blocTest(
    'Set search query',
    build: () => animeListBloc,
    act: (bloc) {
      bloc.add(Search('query'));
    },
    expect: () => [
      const AnimeListState(searchQuery: 'query'),
    ],
  );
}
