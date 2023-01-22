import 'package:details/src/domain/entities/anime.dart';
import 'package:details/src/presentation/views/widgets/anime_details_tags.dart';
import 'package:flutter/material.dart';

class AnimeDetailsContent extends StatelessWidget {
  final Anime anime;

  const AnimeDetailsContent({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 150,
                  width: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Stack(
                    children: [
                      Image.network(
                        width: double.infinity,
                        height: double.infinity,
                        anime.picture,
                        fit: BoxFit.fill,
                      ),
                      Positioned(
                        bottom: 1,
                        child: Container(
                          color: Colors.black38,
                          child: Text(
                            anime.type.name.toUpperCase(),
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          anime.title,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Column(
                        children: [
                          Text(
                            anime.season.season.name.toUpperCase(),
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            anime.season.year?.toString() ?? '',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.access_time),
                          const SizedBox(width: 8),
                          Text(
                            anime.status.name.toUpperCase(),
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            AnimeDetailsTags(tags: anime.tags),
          ],
        ),
      ),
    );
  }
}
