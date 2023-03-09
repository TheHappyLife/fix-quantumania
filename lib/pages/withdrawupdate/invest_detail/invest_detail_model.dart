import '/backend/api_requests/api_calls.dart';
import '/components/bottom_sheet_box_success_widget.dart';
import '/components/header_nav_back/header_nav_back_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class InvestDetailModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String currencyPayment = 'QOC';

  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Stores action output result for [Backend Call - API (API Buy Invest)] action in Button widget.
  ApiCallResponse? buyUnvest;
  // Stores action output result for [Backend Call - API (GetInventory)] action in Button widget.
  ApiCallResponse? responseInventory;
  // Stores action output result for [Backend Call - API (Statistic)] action in Button widget.
  ApiCallResponse? responseStatistic;
  // Stores action output result for [Backend Call - API (getActivities)] action in Button widget.
  ApiCallResponse? responseActivitiy;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in Button widget.
  ApiCallResponse? responseWallet;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
  }

  /// Additional helper methods are added here.

}
