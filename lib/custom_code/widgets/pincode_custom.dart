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

import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class PincodeCustom extends StatefulWidget {
  const PincodeCustom({
    Key? key,
    this.width,
    this.height,
    this.email,
    this.inactiveColor,
    this.inactiveFillColor,
    this.selectedColor,
    this.selectedFillColor,
    this.activeColor,
    this.activeFillColor,
    this.textColor,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String? email;
  final Color? inactiveColor;
  final Color? inactiveFillColor;
  final Color? selectedColor;
  final Color? selectedFillColor;
  final Color? activeColor;
  final Color? activeFillColor;
  final Color? textColor;

  @override
  _PincodeCustomState createState() => _PincodeCustomState();
}

class _PincodeCustomState extends State<PincodeCustom> {
  TextEditingController textEditingController = TextEditingController();
  late SharedPreferences _prefs;
  Future<int> fetchData(String? email, String token) async {
    var url = Uri.https(
        'q-quantummania-cms.dev-tn.com', 'investment/api/auth/verify-otp');
    var response = await http.post(url, body: {'email': email, 'token': token});

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      _prefs.setString("accessToken", jsonData['access_token'].toString());

      FFAppState().update(() {
        FFAppState().accessToken = jsonData['access_token'].toString();

        FFAppState().errorOtp = '';

        FFAppState().LoadingVerifyOTP = false;

        FFAppState().currentPageMain = 'overviewPage';
      });
    } else {
      FFAppState().update(() {
        FFAppState().errorOtp = 'Your OTP is invalid. Please try agian';
        FFAppState().LoadingVerifyOTP = false;
      });
    }

    return response.statusCode;
  }

  @override
  void initState() {
    super.initState();
    _initPreferences();
  }

  Future<void> _initPreferences() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: PinCodeTextField(
        appContext: context,
        length: 6,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(8),
          fieldHeight: 56,
          fieldWidth: 48,
          inactiveColor: widget.inactiveColor!,
          inactiveFillColor: widget.inactiveFillColor!,
          selectedColor: widget.selectedColor!,
          selectedFillColor: widget.selectedFillColor!,
          activeColor: widget.activeColor!,
          activeFillColor: widget.activeFillColor!,
        ),
        textStyle: TextStyle(
            color: widget.textColor!,
            fontFamily: 'Josefin Sans',
            fontSize: 16,
            fontWeight: FontWeight.w600),
        autoFocus: true,
        animationDuration: Duration(milliseconds: 300),
        enableActiveFill: true,
        keyboardType: TextInputType.number,
        controller: textEditingController,
        onCompleted: (v) async {
          var response = await fetchData(widget.email, v);

          if (response == 200) {
            context.goNamed('MainPage');
          }
        },
        onChanged: (value) {},
      ),
    );
  }
}
