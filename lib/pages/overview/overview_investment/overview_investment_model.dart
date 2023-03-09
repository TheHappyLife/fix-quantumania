import '/components/overview_page_copy/overview_page_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OverviewInvestmentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for OverviewPageCopy component.
  late OverviewPageCopyModel overviewPageCopyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    overviewPageCopyModel = createModel(context, () => OverviewPageCopyModel());
  }

  void dispose() {
    overviewPageCopyModel.dispose();
  }

  /// Additional helper methods are added here.

}
