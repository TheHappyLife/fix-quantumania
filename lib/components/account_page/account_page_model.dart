import '/components/nav_sidebar/nav_sidebar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Nav_Sidebar component.
  late NavSidebarModel navSidebarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    navSidebarModel = createModel(context, () => NavSidebarModel());
  }

  void dispose() {
    navSidebarModel.dispose();
  }

  /// Additional helper methods are added here.

}
