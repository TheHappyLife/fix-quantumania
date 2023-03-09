import '/components/my_account_page/my_account_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavSidebarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for MyAccountPage component.
  late MyAccountPageModel myAccountPageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    myAccountPageModel = createModel(context, () => MyAccountPageModel());
  }

  void dispose() {
    myAccountPageModel.dispose();
  }

  /// Additional helper methods are added here.

}
