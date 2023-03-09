import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pincode_model.dart';
export 'pincode_model.dart';

class PincodeWidget extends StatefulWidget {
  const PincodeWidget({Key? key}) : super(key: key);

  @override
  _PincodeWidgetState createState() => _PincodeWidgetState();
}

class _PincodeWidgetState extends State<PincodeWidget> {
  late PincodeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PincodeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: PinCodeTextField(
        appContext: context,
        length: 6,
        textStyle: FlutterFlowTheme.of(context).subtitle2.override(
              fontFamily: FlutterFlowTheme.of(context).subtitle2Family,
              color: FlutterFlowTheme.of(context).primary1,
              useGoogleFonts: GoogleFonts.asMap()
                  .containsKey(FlutterFlowTheme.of(context).subtitle2Family),
            ),
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        enableActiveFill: false,
        autoFocus: false,
        showCursor: false,
        cursorColor: FlutterFlowTheme.of(context).neutrals2,
        obscureText: false,
        pinTheme: PinTheme(
          fieldHeight: 56.0,
          fieldWidth: 50.0,
          borderWidth: 1.0,
          borderRadius: BorderRadius.circular(8.0),
          shape: PinCodeFieldShape.box,
          activeColor: FlutterFlowTheme.of(context).primary1,
          inactiveColor: FlutterFlowTheme.of(context).aliasGrayscalePlaceholder,
          selectedColor: FlutterFlowTheme.of(context).primaryColor,
          activeFillColor: FlutterFlowTheme.of(context).primary1,
          inactiveFillColor:
              FlutterFlowTheme.of(context).aliasGrayscalePlaceholder,
          selectedFillColor: FlutterFlowTheme.of(context).primaryColor,
        ),
        controller: _model.pinCodeController,
        onChanged: (_) => {},
        onCompleted: (_) async {
          FFAppState().update(() {
            FFAppState().errorOtp = '';
            FFAppState().LoadingVerifyOTP = true;
          });
          _model.apiResultjaz = await LoginAndOTPGroup.verifyOTPCall.call(
            email: FFAppState().EmailLogin,
            token: _model.pinCodeController!.text,
          );
          if ((_model.apiResultjaz?.succeeded ?? true)) {
            FFAppState().update(() {
              FFAppState().accessToken = getJsonField(
                (_model.apiResultjaz?.jsonBody ?? ''),
                r'''$.access_token''',
              ).toString();
              FFAppState().errorOtp = '';
              FFAppState().LoadingVerifyOTP = false;
            });

            context.pushNamed('Overview_new_bie');
          } else {
            FFAppState().update(() {
              FFAppState().errorOtp = 'Your OTP is invalid. Please try agian';
              FFAppState().LoadingVerifyOTP = false;
            });
          }

          setState(() {});
        },
      ),
    );
  }
}
