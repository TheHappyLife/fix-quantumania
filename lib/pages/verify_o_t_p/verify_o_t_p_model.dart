import '/components/head_page_text/head_page_text_widget.dart';
import '/components/pincode/pincode_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VerifyOTPModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Head_page_text component.
  late HeadPageTextModel headPageTextModel;
  // Model for Pincode component.
  late PincodeModel pincodeModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headPageTextModel = createModel(context, () => HeadPageTextModel());
    pincodeModel = createModel(context, () => PincodeModel());
  }

  void dispose() {
    headPageTextModel.dispose();
    pincodeModel.dispose();
  }

  /// Additional helper methods are added here.

}
