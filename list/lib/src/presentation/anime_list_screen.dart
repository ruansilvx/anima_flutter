import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:list/list_service_locator.dart';
import 'package:list/src/presentation/blocs/anime_list/anime_list_bloc.dart';
import 'package:list/src/presentation/view/list/anime_list.dart';

class AnimeListScreen extends StatelessWidget {
  const AnimeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AnimeListBloc>(
      create: (_) => getIt<AnimeListBloc>(),
      child: const Scaffold(body: AnimeList()),
    );
  }
}
