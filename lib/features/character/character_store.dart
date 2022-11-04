import 'package:flutter/cupertino.dart';
import 'package:genshin_project/features/models/textforms.dart';
import 'package:mobx/mobx.dart';

part 'character_store.g.dart';

class CharacterStore = _CharacterStore with _$CharacterStore;

// The store-class
abstract class _CharacterStore with Store {
  @observable
  TextFormsModel forms = TextFormsModel(TextEditingController(),
      TextEditingController(), TextEditingController());
}
