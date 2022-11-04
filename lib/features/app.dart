import 'package:flutter/material.dart';

import 'home/my_home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'HYWenHei',
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(),
    );
  }
}
