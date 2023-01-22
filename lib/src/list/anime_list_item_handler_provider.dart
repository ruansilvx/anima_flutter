import 'package:anima_flutter/src/list/anime_list_item_handler_impl.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:list/list.dart';
import 'package:provider/provider.dart';

class AnimeListItemHandlerProvider extends StatelessWidget {
  final Widget child;

  const AnimeListItemHandlerProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Provider<AnimeListItemHandler>(
      create: (BuildContext context) {
        return AnimeListItemHandlerImpl(tapHandler: (id) {
          context.go('/anime/$id');
        });
      },
      child: child,
    );
  }
}
