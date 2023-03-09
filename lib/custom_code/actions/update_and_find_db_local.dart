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

Future updateAndFindDbLocal(
    Map<String, dynamic>? dataInvestment,
    Map<String, dynamic>? dataProfile,
    Map<String, dynamic>? dataStatistic,
    Map<String, dynamic>? dataActivities,
    Map<String, dynamic>? historyData,
    Map<String, dynamic>? dataFaq,
    Map<String, dynamic>? dataNoti) async {
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

  //statistic

  if (dataStatistic != null) {
    List<Map<String, dynamic>> responseStatistic =
        await updateAndFind(dbHelper, statisticTable, dataStatistic);

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
        await findData(dbHelper, investmentPackageTable);

    dynamic dataPackage = json.decode(responseInvest[0]['data']);
    // data package follow rank
    dynamic filterDataFollowRank =
        dataPackage['data'].where((item) => item['meta_tag'] == rank).toList();

    Map<String, List<dynamic>> dataPackageFollowRank = {
      'data': filterDataFollowRank
    };
    FFAppState().update(
        () => {FFAppState().packageResponseRank = dataPackageFollowRank});
    //data package follow new biew
    dynamic filterDataFollowNewbie = dataPackage['data']
        .where((item) => item['meta_tag'] == 'cheap')
        .toList();

    Map<String, List<dynamic>> dataPackageFollowNewbie = {
      'data': filterDataFollowNewbie
    };
    FFAppState().update(() => {
          FFAppState().packageResponseNewbie = dataPackageFollowNewbie,
          FFAppState().loadingPackage = false
        });
  }

  if (dataInvestment != null) {
    List<Map<String, dynamic>> responseStatistic =
        await findData(dbHelper, statisticTable);

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
        await updateAndFind(dbHelper, investmentPackageTable, dataInvestment);

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
    FFAppState().update(
        () => {FFAppState().packageResponseRank = dataPackageFollowRank});
    //data package follow new biew
    dynamic filterDataFollowNewbie = dataPackage['data']
        .where((item) => item['meta_tag'] == 'cheap')
        .toList();

    Map<String, List<dynamic>> dataPackageFollowNewbie = {
      'data': filterDataFollowNewbie
    };
    FFAppState().update(() => {
          FFAppState().packageResponseNewbie = dataPackageFollowNewbie,
          FFAppState().loadingPackage = false
        });
  }

  //History interest data

  if (historyData != null) {
    List<Map<String, dynamic>> responseHistoryInterest =
        await updateAndFind(dbHelper, historyInterestTable, historyData);
    FFAppState().update(() => {
          FFAppState().responseInterestDaily =
              json.decode(responseHistoryInterest[0]['data'])
        });
  }

  if (dataProfile != null) {
    //profile
    List<Map<String, dynamic>> responseProfile =
        await updateAndFind(dbHelper, profileTable, dataProfile);
    FFAppState().update(() => {
          FFAppState().responseProfile = json.decode(responseProfile[0]['data'])
        });
  }

  if (dataActivities != null) {
    //activities
    List<Map<String, dynamic>> responseActivities =
        await updateAndFind(dbHelper, activitiesTable, dataActivities);
    FFAppState().update(() => {
          FFAppState().responseActivity =
              json.decode(responseActivities[0]['data'])
        });
  }

  if (dataFaq != null) {
    //faq
    List<Map<String, dynamic>> responseFaq =
        await updateAndFind(dbHelper, faqTable, dataFaq);
    FFAppState()
        .update(() => {FFAppState().faq = json.decode(responseFaq[0]['data'])});
  }

  //noti
  if (dataNoti != null) {
    //faq
    List<Map<String, dynamic>> resNoti =
        await updateAndFind(dbHelper, notiTable, dataNoti);
    FFAppState().update(
        () => {FFAppState().responseNoti = json.decode(resNoti[0]['data'])});
  }

  print(">>>>>>>> Get data From local sqlite end");
}

Future<List<Map<String, dynamic>>> updateAndFind(
    DatabaseHelper dbHelper, String tableName, dynamic dataRecord) async {
  await dbHelper.updateData(tableName, dataRecord);

  List<Map<String, dynamic>> dataResponse =
      await dbHelper.findAllData(tableName);

  return dataResponse;
}

Future<List<Map<String, dynamic>>> findData(
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
