import 'package:flutter/material.dart';

class AnimeListAppBar extends StatelessWidget {
  const AnimeListAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Flexible(
              child: TextField(
                decoration: InputDecoration(
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
