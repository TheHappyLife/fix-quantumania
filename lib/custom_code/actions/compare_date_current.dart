// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';

Future<bool> compareDateCurrent() async {
  // Add your function code here!
  SharedPreferences prefs = await SharedPreferences.getInstance();

  DateTime now = DateTime.now();
  int day = now.day;
  int month = now.month;
  int year = now.year;

  String dateCurrent = '$day/$month/$year';

  String? lastTimeString = prefs.getString('lastTime');

  if (lastTimeString == null || lastTimeString != dateCurrent) {
    prefs.setString('lastTime', dateCurrent);
    return true;
  } else {
    return false;
  }
}
