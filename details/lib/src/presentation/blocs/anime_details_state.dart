import 'package:details/src/domain/entities/anime.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_details_state.freezed.dart';

@freezed
class AnimeDetailsState with _$AnimeDetailsState {
  const factory AnimeDetailsState({
    @Default(AnimeDetailsStatus.loading) AnimeDetailsStatus status,
    Anime? anime,
  }) = _AnimeDetailsState;
}

enum AnimeDetailsStatus { loading, error, success }
