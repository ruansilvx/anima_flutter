abstract class AnimeListEvent {}

class FetchPage extends AnimeListEvent {
  final int page;

  FetchPage({required this.page});
}

class Search extends AnimeListEvent {
  final String searchQuery;

  Search(this.searchQuery);
}
