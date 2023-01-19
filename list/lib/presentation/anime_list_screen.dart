import 'package:flutter/material.dart';
import 'package:list/list_service_locator.dart';
import 'package:list/presentation/view/list/anime_list.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_bloc.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

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
