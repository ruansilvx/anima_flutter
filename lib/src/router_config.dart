import 'package:anima_flutter/src/list/anime_list_item_handler_provider.dart';
import 'package:details/details.dart';
import 'package:go_router/go_router.dart';
import 'package:list/list.dart';

final routerConfig = GoRouter(
  initialLocation: '/anime',
  routes: [
    GoRoute(
      path: '/anime',
      builder: (context, state) {
        return const AnimeListItemHandlerProvider(
          child: AnimeListScreen(),
        );
      },
      routes: [
        GoRoute(
          path: ':id',
          builder: (context, state) {
            final id = state.params['id']!;
            return AnimeDetailsScreen(animeId: id);
          },
        ),
      ],
    ),
  ],
);
