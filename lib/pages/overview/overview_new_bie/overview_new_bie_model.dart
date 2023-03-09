import '/components/overview_page/overview_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewNewBieModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for OverviewPage component.
  late OverviewPageModel overviewPageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    overviewPageModel = createModel(context, () => OverviewPageModel());
  }

  void dispose() {
    overviewPageModel.dispose();
  }

  /// Additional helper methods are added here.

}
