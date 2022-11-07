import 'package:flutter/material.dart';
import 'package:genshin_project/features/app.dart';
import 'package:genshin_project/features/character/character_controller.dart';
import 'package:genshin_project/features/character/character_store.dart';
import 'package:provider/provider.dart';

import '../components/my_appbar.dart';
import '../components/my_formfield.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final CharacterController _characterController = CharacterController();

  List<TextEditingController> controls = [];
  List<String> labels = ['Name', 'Banner', 'Banners since last appearance'];
  List<String?> errors = [null, null, null];

  late CharacterStore _characterStore;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _characterStore = Provider.of<CharacterStore>(context);
    controls = [
      _characterStore.forms.nameControl,
      _characterStore.forms.bannerControl,
      _characterStore.forms.sinceControl
    ];
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(
        title: 'Home',
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: screenSize.height * 0.05,
            left: screenSize.width * 0.05,
            right: screenSize.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return MyFormField(
                      control: controls[index],
                      labelText: labels[index],
                      errorText: errors[index]);
                },
                itemCount: controls.length,
              ),
            ),
            const Text(
              'Add character:',
            ),
            IconButton(
                onPressed: () {
                  _characterController
                      .insertCharacter(_characterStore.getTempChar());
                },
                icon: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
