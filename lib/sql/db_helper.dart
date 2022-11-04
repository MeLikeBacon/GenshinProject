import 'dart:async';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.getInstance();

  DatabaseHelper.getInstance();

  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database?> get db async {
    _db ??= await _initDb();
    return _db;
  }

  Future _initDb() async {
    String dbPath = await getDatabasesPath();
    String path = join(dbPath, 'GENSHIN.db');
    print('database $path');

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int newVersion) async {
    String sqlFile = await rootBundle.loadString('assets/CREATE.sql');
    List<String> sqlList = sqlFile.split(';');

    for (String sql in sqlList) {
      if (sql
          .trim()
          .isNotEmpty) {
        print('SQL: $sql');
        await db.execute(sql);
      }
    }
  }

  Future close() async {
    var dbClient = await db;
    return dbClient!.close();
  }
}