// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:sqflite/sqflite.dart';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future<bool> checkDataExistInTable() async {
  // Add your function code here!
  if (kIsWeb) {
    print('Web ne, Sqlite dell run');
    return false;
  }

  print('Sqlite run');

  final String dbName = 'quantumania.db'; // db name
  final String investmentPackageTable =
      'investment_package'; // table investment package
  final String profileTable = 'profile';
  final String statisticTable = 'statictis';
  final String activitiesTable = 'activities';
  final String historyInterest = 'history_interest';
  final String faqTable = 'faq';
  final String notiTable = 'noti';

  String path = join(await getDatabasesPath(), dbName); // path to db

  final Database db = await openDatabase(
    dbName,
    version: 1,
  ); // init database

  DatabaseHelper dbHelper = DatabaseHelper(db: db);

  await dbHelper.createTableIfNotExist(investmentPackageTable);
  await dbHelper.createTableIfNotExist(profileTable);
  await dbHelper.createTableIfNotExist(statisticTable);
  await dbHelper.createTableIfNotExist(activitiesTable);
  await dbHelper.createTableIfNotExist(faqTable);
  await dbHelper.createTableIfNotExist(historyInterest);
  await dbHelper.createTableIfNotExist(notiTable);

  if (await dbHelper.isTableEmpty(investmentPackageTable) &&
      await dbHelper.isTableEmpty(profileTable) &&
      await dbHelper.isTableEmpty(statisticTable) &&
      await dbHelper.isTableEmpty(activitiesTable) &&
      await dbHelper.isTableEmpty(faqTable) &&
      await dbHelper.isTableEmpty(historyInterest) &&
      await dbHelper.isTableEmpty(notiTable)) {
    return true;
  } else {
    return false;
  }
}

class DatabaseHelper {
  final Database db;

  const DatabaseHelper({required this.db});

  Future<void> createTableIfNotExist(String tableName) async {
    await db.execute(
        'CREATE TABLE IF NOT EXISTS $tableName (id INTEGER PRIMARY KEY, data TEXT)');
  }

  Future<bool> isTableEmpty(String tableName) async {
    var result = await db.rawQuery('SELECT COUNT(*) FROM $tableName;');
    int count = Sqflite.firstIntValue(result)!;
    return count > 0;
  }
}
