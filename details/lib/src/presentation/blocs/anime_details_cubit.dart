import 'package:details/src/domain/use_cases/get_anime_use_case.dart';
import 'package:details/src/presentation/blocs/anime_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AnimeDetailsCubit extends Cubit<AnimeDetailsState> {
  final GetAnimeUseCase _getAnimeUseCase;

  AnimeDetailsCubit(this._getAnimeUseCase) : super(const AnimeDetailsState());

  Future<void> getAnime(String animeId) async {
    try {
      emit(state.copyWith(status: AnimeDetailsStatus.loading));

      final anime = await _getAnimeUseCase(animeId);

      emit(state.copyWith(status: AnimeDetailsStatus.success, anime: anime));
    } catch (_) {
      emit(state.copyWith(status: AnimeDetailsStatus.error));
    }
  }
}
