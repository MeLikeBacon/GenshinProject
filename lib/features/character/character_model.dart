import 'dart:convert';

import 'package:genshin_project/sql/entity.dart';

class GenshinCharacterModel extends Entity {
  int? charId;
  String? charName;
  String? bannerName;
  int? numSince;

  GenshinCharacterModel({this.charId, this.charName, this.bannerName, this.numSince});

  @override
  String toString() {
    return 'Genshin Character - {ID: $charId, Name: $charName, Banner: $bannerName, Banners since last: $numSince}';
  }

  @override
  Map<String, dynamic> toMap() {
    return {'charId': charId, 'charName': charName, 'bannerName': bannerName, 'numSince': numSince};
  }

  factory GenshinCharacterModel.fromJson(Map<String, dynamic> json) {
    return GenshinCharacterModel(
        charId: json['charId'], charName: json['charName'], bannerName: json['bannerName'], numSince: json['numSince']);
  }

  String toJson() => json.encode(toMap());
}
