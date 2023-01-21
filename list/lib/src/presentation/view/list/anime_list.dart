import 'dart:async';

import 'package:flutter/material.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/presentation/anime_list_app_bar.dart';
import 'package:list/src/presentation/blocs/anime_list/anime_list_bloc.dart';
import 'package:list/src/presentation/blocs/anime_list/anime_list_event.dart';
import 'package:list/src/presentation/interfaces/anime_list_item_handler.dart';
import 'package:list/src/presentation/view/list/anime_list_item.dart';
import 'package:list/src/presentation/view/list/anime_list_item_loading.dart';
import 'package:provider/provider.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({super.key});

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  final PagingController<int, Anime> _pagingController =
      PagingController(firstPageKey: 1);
  late StreamSubscription _animeListBlocStateSubscription;
  late final AnimeListItemHandler? itemHandler =
      context.read<AnimeListItemHandler?>();

  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<AnimeListBloc>().add(FetchPage(page: pageKey));
      },
    );

    _animeListBlocStateSubscription =
        context.read<AnimeListBloc>().stream.listen((state) {
      if (state.list == null && state.nextPage == null) {
        _pagingController.refresh();
      } else {
        _pagingController.value = PagingState(
          nextPageKey: state.nextPage,
          itemList: state.list,
          error: state.error ? true : null,
        );
      }
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
            builderDelegate: PagedChildBuilderDelegate(itemBuilder: (
              context,
              item,
              index,
            ) {
              return InkWell(
                onTap: itemHandler != null
                    ? () => itemHandler!.handleTap(item.id)
                    : null,
                child: AnimeListItem(anime: item),
              );
            }, newPageProgressIndicatorBuilder: (context) {
              return const AnimeListItemLoading();
            }, firstPageProgressIndicatorBuilder: (context) {
              return SizedBox(
                height: 500,
                child: Column(
                  children: const [
                    AnimeListItemLoading(),
                    AnimeListItemLoading(),
                    AnimeListItemLoading(),
                  ],
                ),
              );
            }),
          ),
        ),
        AnimeListAppBar(
          handleSearchQuery: (query) {
            context.read<AnimeListBloc>().add(Search(query));
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    _animeListBlocStateSubscription.cancel();
    super.dispose();
  }
}
