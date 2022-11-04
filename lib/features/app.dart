import 'package:flutter/material.dart';
import 'package:genshin_project/features/character/character_store.dart';
import 'home/my_home.dart';

import 'package:provider/provider.dart';

//import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (_) => CharacterStore())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'HYWenHei',
          primarySwatch: Colors.deepPurple,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
