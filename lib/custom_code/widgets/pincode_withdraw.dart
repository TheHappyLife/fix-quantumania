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
import '../../components/withdraw_crypto_success/withdraw_crypto_success_widget.dart';
import '../../components/withdraw_failure/withdraw_failure_widget.dart';

class PincodeWithdraw extends StatefulWidget {
  const PincodeWithdraw({
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
    this.address,
    this.amount,
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
  final String? address;
  final double? amount;

  @override
  _PincodeWithdrawState createState() => _PincodeWithdrawState();
}

class _PincodeWithdrawState extends State<PincodeWithdraw> {
  TextEditingController textEditingController = TextEditingController();
  final accessToken = FFAppState().accessToken;

  Future<int> fetchData(String? email, String token) async {
    var url = Uri.https(
        'q-quantummania-cms.dev-tn.com', 'investment/api/auth/verify-otp');
    var response = await http.post(url, body: {'email': email, 'token': token});

    if (response.statusCode == 200) {
      // var jsonData = json.decode(response.body);

      // FFAppState().update(() {
      //   FFAppState().accessToken = jsonData['access_token'].toString();

      //   FFAppState().errorOtp = '';

      //   FFAppState().LoadingVerifyOTP = false;

      //   FFAppState().currentPageMain = 'overviewPage';
      // });

    } else {
      FFAppState().update(() {
        FFAppState().errorOtpWithdraw = true;
      });
    }

    return response.statusCode;
  }

  Future<int> withdrawCrypto(String? address, double? amount) async {
    var url = Uri.https(
        'q-quantummania-cms.dev-tn.com', 'investment/api/v1/withdraw-crypto');
    var response = await http.post(url,
        body: jsonEncode({'address': address, 'amount': amount}),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken'
        });
    return response.statusCode;
  }

  @override
  void initState() {
    super.initState();
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
          var responseOtp = await fetchData(widget.email, v);

          if (responseOtp == 200) {
            var responseWithdraw =
                await withdrawCrypto(widget.address, widget.amount);

            if (responseWithdraw == 200) {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                barrierColor: FlutterFlowTheme.of(context).secondaryBackground,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1,
                      child: WithdrawCryptoSuccessWidget(
                        amount: widget.amount!,
                      ),
                    ),
                  );
                },
              ).then((value) => setState(() {}));
            } else {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor:
                    FlutterFlowTheme.of(context).secondaryBackground,
                barrierColor: FlutterFlowTheme.of(context).secondaryBackground,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 1,
                      child: WithdrawFailureWidget(),
                    ),
                  );
                },
              ).then((value) => setState(() {}));
            }
          }
        },
        onChanged: (value) {},
      ),
    );
  }
}
