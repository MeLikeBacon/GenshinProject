import 'package:flutter/material.dart';
import 'package:genshin_project/features/character/character_controller.dart';
import 'package:genshin_project/features/character/character_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CharacterController _characterController = CharacterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Add character:',
            ),
            IconButton(
                onPressed: () {
                  GenshinCharacterModel genshinChar =
                      GenshinCharacterModel(charName: 'Yoimiya', bannerName: 'Tapestry of Golden Flames', numSince: 3);
                  _characterController.insertCharacter(genshinChar);
                },
                icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
