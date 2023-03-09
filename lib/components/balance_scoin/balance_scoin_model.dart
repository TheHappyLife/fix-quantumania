import '/backend/api_requests/api_calls.dart';
import '/components/header_tool_item_image/header_tool_item_image_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BalanceScoinModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Header_Tool_item_image component.
  late HeaderToolItemImageModel headerToolItemImageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerToolItemImageModel =
        createModel(context, () => HeaderToolItemImageModel());
  }

  void dispose() {
    headerToolItemImageModel.dispose();
  }

  /// Additional helper methods are added here.

}
