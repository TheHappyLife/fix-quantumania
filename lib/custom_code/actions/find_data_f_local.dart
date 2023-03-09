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

Future findDataFLocal() async {
  print(">>>>>>>> Get data From local sqlite start");
  // Add your function code here!
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

  //noti
  List<Map<String, dynamic>> responseNotification =
      await FindData(dbHelper, notiTable);

  FFAppState().update(() => {
        FFAppState().responseNoti =
            json.decode(responseNotification[0]['data']),
      });

  //statistic
  List<Map<String, dynamic>> responseStatistic =
      await FindData(dbHelper, statisticTable);

  FFAppState().update(() => {
        FFAppState().statisticResponse =
            json.decode(responseStatistic[0]['data']),
        FFAppState().loadingChart = false
      });

  dynamic dataStatictis = json.decode(responseStatistic[0]['data']);

  num totalSatistic = dataStatictis['data']['total'] ?? 0;

  String rank;

  if (totalSatistic > 150000) {
    rank = 'master';
  } else if (totalSatistic > 100000) {
    rank = "diamond";
  } else if (totalSatistic > 50000) {
    rank = 'golden';
  } else {
    rank = 'newbie';
  }

  //invest package
  List<Map<String, dynamic>> responseInvest =
      await FindData(dbHelper, investmentPackageTable);

  FFAppState().update(() => {
        FFAppState().packageResponse = json.decode(responseInvest[0]['data']),
        FFAppState().loadingPackageNomal = false
      });

  dynamic dataPackage = json.decode(responseInvest[0]['data']);
  // data package follow rank
  dynamic filterDataFollowRank =
      dataPackage['data'].where((item) => item['meta_tag'] == rank).toList();

  Map<String, List<dynamic>> dataPackageFollowRank = {
    'data': filterDataFollowRank
  };
  FFAppState()
      .update(() => {FFAppState().packageResponseRank = dataPackageFollowRank});
  //data package follow new biew
  dynamic filterDataFollowNewbie =
      dataPackage['data'].where((item) => item['meta_tag'] == 'cheap').toList();

  Map<String, List<dynamic>> dataPackageFollowNewbie = {
    'data': filterDataFollowNewbie
  };
  FFAppState().update(() => {
        FFAppState().packageResponseNewbie = dataPackageFollowNewbie,
        FFAppState().loadingPackage = false
      });

  //History interest data

  List<Map<String, dynamic>> responseHistoryInterest =
      await FindData(dbHelper, historyInterestTable);
  FFAppState().update(() => {
        FFAppState().responseInterestDaily =
            json.decode(responseHistoryInterest[0]['data'])
      });

  //profile
  List<Map<String, dynamic>> responseProfile =
      await FindData(dbHelper, profileTable);
  FFAppState().update(() =>
      {FFAppState().responseProfile = json.decode(responseProfile[0]['data'])});

  //activities
  List<Map<String, dynamic>> responseActivities =
      await FindData(dbHelper, activitiesTable);
  FFAppState().update(() => {
        FFAppState().responseActivity =
            json.decode(responseActivities[0]['data'])
      });

  //faq
  List<Map<String, dynamic>> responseFaq = await FindData(dbHelper, faqTable);
  FFAppState()
      .update(() => {FFAppState().faq = json.decode(responseFaq[0]['data'])});

  print(">>>>>>>> Get data From local sqlite end");
}

Future<List<Map<String, dynamic>>> FindData(
    DatabaseHelper dbHelper, String tableName) async {
  List<Map<String, dynamic>> dataResponse =
      await dbHelper.findAllData(tableName);

  return dataResponse;
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
