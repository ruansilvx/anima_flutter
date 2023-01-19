import 'package:anima_flutter/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:list/presentation/anime_list_screen.dart';

void main() {
  initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AnimeListScreen(),
    );
  }
}
