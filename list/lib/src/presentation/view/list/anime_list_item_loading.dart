import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AnimeListItemLoading extends StatelessWidget {
  const AnimeListItemLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: const EdgeInsets.all(8),
        color: Theme.of(context).backgroundColor,
        child: Shimmer.fromColors(
          baseColor: Colors.grey.withOpacity(0.6),
          highlightColor: Theme.of(context).backgroundColor,
          child: Row(
            children: [
              Container(
                height: 150,
                width: 100,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 16,
                    width: constraints.maxWidth - 124,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 16,
                    width: (constraints.maxWidth - 124) * 0.7,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
