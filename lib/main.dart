import 'package:anima_flutter/src/list/anime_list_item_handler_provider.dart';
import 'package:anima_flutter/src/service_locator.dart';
import 'package:details/details.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:list/list.dart';

void main() {
  initServiceLocator();
  runApp(const AnimaApp());
}

class AnimaApp extends StatelessWidget {
  const AnimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Anima',
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      routerConfig: GoRouter(
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
      ),
    );
  }
}
