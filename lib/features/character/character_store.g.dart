// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharacterStore on _CharacterStore, Store {
  late final _$formsAtom =
      Atom(name: '_CharacterStore.forms', context: context);

  @override
  TextFormsModel get forms {
    _$formsAtom.reportRead();
    return super.forms;
  }

  @override
  set forms(TextFormsModel value) {
    _$formsAtom.reportWrite(value, super.forms, () {
      super.forms = value;
    });
  }

  @override
  String toString() {
    return '''
forms: ${forms}
    ''';
  }
}
