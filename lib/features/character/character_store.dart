import 'package:flutter/cupertino.dart';
import 'package:genshin_project/features/character/character_model.dart';
import 'package:genshin_project/features/models/textforms.dart';
import 'package:mobx/mobx.dart';

part 'character_store.g.dart';

class CharacterStore = _CharacterStore with _$CharacterStore;

abstract class _CharacterStore with Store {
  @observable
  TextFormsModel forms = TextFormsModel(TextEditingController(),
      TextEditingController(), TextEditingController());

  @action
  GenshinCharacterModel getTempChar() {
    var char = GenshinCharacterModel(
        charName: forms.nameControl.text,
        bannerName: forms.bannerControl.text,
        numSince: int.parse(forms.sinceControl.text));
    return char;
  }
}
