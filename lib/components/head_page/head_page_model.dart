import '/components/head_page_text/head_page_text_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeadPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Head_page_text component.
  late HeadPageTextModel headPageTextModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headPageTextModel = createModel(context, () => HeadPageTextModel());
  }

  void dispose() {
    headPageTextModel.dispose();
  }

  /// Additional helper methods are added here.

}
