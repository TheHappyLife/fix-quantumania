import '/components/overview_main_update/overview_main_update_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewV2updateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for overview_main_update component.
  late OverviewMainUpdateModel overviewMainUpdateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    overviewMainUpdateModel =
        createModel(context, () => OverviewMainUpdateModel());
  }

  void dispose() {
    overviewMainUpdateModel.dispose();
  }

  /// Additional helper methods are added here.

}
