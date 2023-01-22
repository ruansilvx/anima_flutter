import 'package:list/list.dart';

class AnimeListItemHandlerImpl implements AnimeListItemHandler {
  @override
  final void Function(String itemId) tapHandler;

  AnimeListItemHandlerImpl({required this.tapHandler});
}
