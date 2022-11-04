import 'package:genshin_project/features/character/character_model.dart';
import 'package:genshin_project/sql/db_helper.dart';
import 'package:sqflite/sqflite.dart';

import 'character_dao.dart';

class CharacterController {
  Future<Database?> get db =>
      DatabaseHelper
          .getInstance()
          .db;
  final CharacterDao _characterDao = CharacterDao();

  Future<List<GenshinCharacterModel>> getCharacters() async {
    return await _characterDao.getCharacters();
  }

  insertCharacter(GenshinCharacterModel genshinChar) async {
    try {
      await _characterDao.save(genshinChar);
    } catch (e) {
      throw 'ERROR: $e';
    }
  }
}
