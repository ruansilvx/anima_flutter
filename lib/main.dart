import 'package:anima_flutter/src/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:list/list.dart';

void main() {
  initServiceLocator();
  runApp(const AnimaApp());
}

class AnimaApp extends StatelessWidget {
  const AnimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anima',
      darkTheme: ThemeData.dark(useMaterial3: true),
      theme: ThemeData.light(useMaterial3: true),
      home: const AnimeListScreen(),
    );
  }
}
