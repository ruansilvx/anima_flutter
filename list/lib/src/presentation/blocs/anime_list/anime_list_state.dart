import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:list/src/domain/entities/anime.dart';

part 'anime_list_state.freezed.dart';

@freezed
class AnimeListState with _$AnimeListState {
  const factory AnimeListState({
    @Default(null) List<Anime>? list,
    @Default(AnimeListFormat.list) AnimeListFormat listFormat,
    @Default(false) bool error,
    @Default(10) int limit,
    int? nextPage,
    String? searchQuery,
  }) = _AnimeListState;
}

enum AnimeListFormat { list, grid, pager }
