import 'dart:async';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:list/domain/entities/anime.dart';
import 'package:list/presentation/anime_list_app_bar.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_bloc.dart';
import 'package:list/presentation/blocs/anime_list/anime_list_event.dart';
import 'package:shared_dependencies/shared_dependencies.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({super.key});

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  final PagingController<int, Anime> _pagingController =
      PagingController(firstPageKey: 1);
  late StreamSubscription _animeListBlocStateSubscription;

  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<AnimeListBloc>().add(FetchPage(page: pageKey));
      },
    );

    _animeListBlocStateSubscription =
        context.read<AnimeListBloc>().stream.listen((state) {
      _pagingController.value = PagingState(
        nextPageKey: state.nextPage,
        itemList: state.list,
        error: state.error ? true : null,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: PagedListView<int, Anime>(
            pagingController: _pagingController,
            builderDelegate: PagedChildBuilderDelegate(
              itemBuilder: (context, item, index) {
                return Text(item.title);
              },
            ),
          ),
        ),
        const AnimeListAppBar(),
      ],
    );
  }

  @override
  void dispose() {
    _animeListBlocStateSubscription.cancel();
    super.dispose();
  }
}
