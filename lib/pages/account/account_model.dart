import '/components/account_page/account_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AccountModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for AccountPage component.
  late AccountPageModel accountPageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    accountPageModel = createModel(context, () => AccountPageModel());
  }

  void dispose() {
    accountPageModel.dispose();
  }

  /// Additional helper methods are added here.

}
