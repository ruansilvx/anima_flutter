import 'package:flutter/material.dart';
import 'package:list/src/domain/entities/anime.dart';
import 'package:list/src/domain/entities/anime_season.dart';

class AnimeListItem extends StatelessWidget {
  final Anime anime;

  const AnimeListItem({super.key, required this.anime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        gradient: LinearGradient(
          colors: [
            Colors.white,
            _seasonColor(anime.season.season),
          ],
        ),
      ),
      child: Row(
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
              children: [
                Flexible(
                  child: Text(
                    anime.title,
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  anime.season.season.name.toUpperCase(),
                  style: const TextStyle(
                      fontSize: 12, fontWeight: FontWeight.bold),
                ),
                Text(
                  anime.season.year?.toString() ?? '',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Color _seasonColor(AnimeSeasonType season) {
    int colorHex = 0xFFFFFF;

    switch (season) {
      case AnimeSeasonType.spring:
        colorHex = 0x034F1B;
        break;
      case AnimeSeasonType.summer:
        colorHex = 0xFFB400;
        break;
      case AnimeSeasonType.fall:
        colorHex = 0xBD3634;
        break;
      case AnimeSeasonType.winter:
        colorHex = 0x00E2FF;
        break;
      case AnimeSeasonType.undefined:
        colorHex = 0x000000;
        break;
    }
    return Color(colorHex);
  }
}
