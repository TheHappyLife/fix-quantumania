// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions
import 'package:sqflite/sqflite.dart';
import 'dart:convert';
import 'package:path/path.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

Future databaseLocal(
    Map<String, dynamic>? dataInvestment,
    Map<String, dynamic>? dataProfile,
    Map<String, dynamic>? dataStatistic,
    Map<String, dynamic>? dataActivities,
    Map<String, dynamic>? historyData,
    Map<String, dynamic>? dataFaq,
    Map<String, dynamic>? dataNoti) async {
  // Add your function code here!

  if (!kIsWeb) {
    final String dbName = 'quantumania.db'; // db name
    final String investmentPackageTable =
        'investment_package'; // table investment package
    final String profileTable = 'profile';
    final String statisticTable = 'statictis';
    final String activitiesTable = 'activities';
    final String historyInterestTable = 'history_interest';
    final String faqTable = 'faq';
    final String notiTable = 'noti';

    String path = join(await getDatabasesPath(), dbName); // path to db

    final Database db = await openDatabase(
      dbName,
      version: 1,
    ); // init database

    DatabaseHelper dbHelper = DatabaseHelper(db: db);

    //create and find table invest

    if (dataInvestment != null) {
      createDataFTable(dbHelper, investmentPackageTable, dataInvestment);
    }

    if (historyData != null) {
      createDataFTable(dbHelper, historyInterestTable, historyData);
    }

    if (dataProfile != null) {
      createDataFTable(dbHelper, profileTable, dataProfile);
    }

    if (dataStatistic != null) {
      createDataFTable(dbHelper, statisticTable, dataStatistic);
    }

    if (dataActivities != null) {
      createDataFTable(dbHelper, activitiesTable, dataActivities);
    }

    if (dataFaq != null) {
      createDataFTable(dbHelper, faqTable, dataFaq);
    }

    if (dataNoti != null) {
      createDataFTable(dbHelper, notiTable, dataNoti);
    }
  }
}

Future<void> createDataFTable(
    DatabaseHelper dbHelper, String tableName, dynamic dataRecord) async {
  int countRowTableInvest = await dbHelper.countRowTable(tableName);

  if (countRowTableInvest < 1) {
    await dbHelper.insertData(tableName, dataRecord);
  }
}

class DatabaseHelper {
  final Database db;

  const DatabaseHelper({required this.db});

  Future<bool> checkTableExists(String tableName) async {
    var res = await db.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name='$tableName'");
    return res.isNotEmpty;
  }

  Future<void> createTableIfNotExist(String tableName) async {
    await db.execute(
        'CREATE TABLE IF NOT EXISTS $tableName (id INTEGER PRIMARY KEY, data TEXT)');
  }

  Future<List<Map<String, dynamic>>> findAllData(String tableName) async {
    final List<Map<String, dynamic>> data = await db.query(tableName);
    return data;
  }

  Future<void> insertData(String tableName, dynamic data) async {
    String newData = json.encode(data);
    await db.insert(
      tableName,
      {'data': newData},
    );
  }

  Future<void> updateData(String tableName, dynamic data) async {
    String newData = json.encode(data);
    await db.update(
      tableName,
      {'data': newData},
      where: 'id = 1',
    );
  }

  Future<int> countRowTable(String tableName) async {
    final result = await db.rawQuery('SELECT COUNT(*) FROM $tableName');
    final count = Sqflite.firstIntValue(result);
    return count ?? 0;
  }

  Future<void> dropTable(String tableName) async {
    await db.execute('DROP TABLE IF EXISTS $tableName');
  }
}
