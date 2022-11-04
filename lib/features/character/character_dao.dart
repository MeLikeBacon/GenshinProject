import 'package:genshin_project/features/character/character_model.dart';
import 'package:genshin_project/sql/base_dao.dart';

class CharacterDao extends BaseDao<GenshinCharacterModel> {
  @override
  GenshinCharacterModel fromMap(Map<String, dynamic> map) {
    return GenshinCharacterModel.fromJson(map);
  }

  @override
  String get tableName => 'characters';

  getCharacters() async {
    try {
      List<GenshinCharacterModel> chars = await query('SELECT * FROM characters');
      return chars;
    } catch (e) {
      throw 'ERROR: $e';
    }
  }


}
