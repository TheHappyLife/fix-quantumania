// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:shared_preferences/shared_preferences.dart';
import 'package:quantumania/index.dart';

class SaveSessionLogin extends StatefulWidget {
  const SaveSessionLogin({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SaveSessionLoginState createState() => _SaveSessionLoginState();
}

class _SaveSessionLoginState extends State<SaveSessionLogin> {
  String? _accessToken;
  late SharedPreferences _prefs;

  @override
  void initState() {
    super.initState();
    _initPreferences();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _accessToken = _prefs.getString('accessToken');
    });

    if (_prefs.getString('accessToken') != null) {
      FFAppState().update(() {
        FFAppState().accessToken = _prefs.getString('accessToken')!;
      });

      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => MainPageWidget()));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
