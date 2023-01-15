import 'package:list/domain/entities/anime.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

part 'anime_list_state.freezed.dart';

@freezed
class AnimeListState with _$AnimeListState {
  const factory AnimeListState({
    @Default([]) List<Anime> list,
    @Default(AnimeListFormat.list) AnimeListFormat listFormat,
    @Default(false) bool error,
    int? page,
    int? limit,
    String? searchQuery,
  }) = _AnimeListState;
}

enum AnimeListFormat { list, grid, pager }
