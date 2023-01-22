import 'package:details/details_service_locator.dart';
import 'package:details/src/presentation/blocs/anime_details_cubit.dart';
import 'package:details/src/presentation/views/anime_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimeDetailsScreen extends StatelessWidget {
  final String animeId;

  const AnimeDetailsScreen({super.key, required this.animeId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimeDetailsCubit>(
      create: (_) => getIt<AnimeDetailsCubit>(),
      child: Scaffold(
        body: SafeArea(child: AnimeDetails(animeId: animeId)),
      ),
    );
  }
}
