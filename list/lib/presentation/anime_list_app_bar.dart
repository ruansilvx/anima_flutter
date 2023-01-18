import 'package:flutter/material.dart';

class AnimeListAppBar extends StatelessWidget {
  final Function(String query) handleSearchQuery;

  const AnimeListAppBar({
    super.key,
    required this.handleSearchQuery,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                onChanged: handleSearchQuery,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
