import 'package:details/src/presentation/blocs/anime_details_cubit.dart';
import 'package:details/src/presentation/blocs/anime_details_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeDetails extends StatefulWidget {
  final String animeId;

  const AnimeDetails({super.key, required this.animeId});

  @override
  State<AnimeDetails> createState() => _AnimeDetailsState();
}

class _AnimeDetailsState extends State<AnimeDetails> {
  @override
  void initState() {
    context.read<AnimeDetailsCubit>().getAnime(widget.animeId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnimeDetailsCubit, AnimeDetailsState>(
      builder: (context, state) {
        if(state.status != AnimeDetailsStatus.success) return Container();
        return Center(child: Text(state.anime!.title),);
      },
    );
  }
}
