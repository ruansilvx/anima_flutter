import 'package:extended_wrap/extended_wrap.dart';
import 'package:flutter/material.dart';

class AnimeDetailsTags extends StatefulWidget {
  final List<String> tags;

  const AnimeDetailsTags({super.key, required this.tags});

  @override
  State<AnimeDetailsTags> createState() => _AnimeDetailsTagsState();
}

class _AnimeDetailsTagsState extends State<AnimeDetailsTags> {
  late int maxLines;
  late bool isExpanded;

  @override
  void initState() {
    isExpanded = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isExpanded) {
      return Column(
        children: [
          Wrap(
            spacing: 8,
            children: widget.tags
                .map(
                  (tag) => Chip(
                    label: Text(tag),
                  ),
                )
                .toList(),
          ),
          IconButton(
            icon: Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
            ),
            onPressed: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
          ),
        ],
      );
    } else {
      return ExtendedWrap(
        maxLines: 3,
        spacing: 8,
        overflowWidget: IconButton(
          icon: Icon(
            isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
          ),
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
        children: widget.tags
            .map(
              (tag) => Chip(
                label: Text(tag),
              ),
            )
            .toList(),
      );
    }
  }
}
