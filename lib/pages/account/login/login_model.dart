import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  int? numberZero = 1000;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // State field(s) for EmailLogin widget.
  TextEditingController? emailLoginController;
  String? Function(BuildContext, String?)? emailLoginControllerValidator;
  // Stores action output result for [Backend Call - API (API Login)] action in Button widget.
  ApiCallResponse? apiResultwrg;
  // Stores action output result for [Backend Call - API (API Login)] action in Text widget.
  ApiCallResponse? resendOtp;
  // State field(s) for TimerOtp widget.
  int timerOtpMilliseconds = 30000;
  String timerOtpValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  StopWatchTimer timerOtpController =
      StopWatchTimer(mode: StopWatchMode.countDown);

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    emailLoginController?.dispose();
    timerOtpController.dispose();
  }

  /// Additional helper methods are added here.

}
