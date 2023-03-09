import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/withdraw_failure/withdraw_failure_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WithdrawFailedModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for withdraw_failure component.
  late WithdrawFailureModel withdrawFailureModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    withdrawFailureModel = createModel(context, () => WithdrawFailureModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    withdrawFailureModel.dispose();
  }

  /// Additional helper methods are added here.

}
