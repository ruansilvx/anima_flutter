import 'package:list/domain/usecases/get_anime_list_use_case.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_event.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_state.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

@injectable
class AnimeListBloc extends Bloc<AnimeListEvent, AnimeListState> {
  final GetAnimeListUseCase _getAnimeListUseCase;

  AnimeListBloc(this._getAnimeListUseCase) : super(const AnimeListState()) {
    on<FetchPage>(_onFetchPage);

    on<Search>(
      _onSearch,
      transformer: debounce(
        const Duration(milliseconds: 300),
      ),
    );
  }

  void _onFetchPage(FetchPage event, Emitter<AnimeListState> emit) async {
    try {
      final animeList = await _getAnimeListUseCase(
        page: event.page,
        limit: state.limit,
        searchQuery: state.searchQuery,
      );

      emit(
        state.copyWith(
          list: (state.list ?? []) + animeList,
          nextPage: animeList.length < state.limit ? null : event.page + 1,
          error: false,
        ),
      );
    } catch (_) {
      emit(state.copyWith(error: true));
    }
  }

  void _onSearch(Search event, Emitter<AnimeListState> emit) {
    emit(
      state.copyWith(
        searchQuery: event.searchQuery,
        list: null,
        nextPage: null,
      ),
    );
  }
}

EventTransformer<AnimeListEvent> debounce<AnimeListEvent>(Duration duration) {
  return (events, mapper) => events.debounce(duration).switchMap(mapper);
}
