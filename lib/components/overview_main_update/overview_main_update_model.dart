import '/backend/api_requests/api_calls.dart';
import '/components/badge_brand_small/badge_brand_small_widget.dart';
import '/components/frequently/frequently_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/components/wallet_copy/wallet_copy_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OverviewMainUpdateModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool? toggleView = true;

  String packageView = 'rank';

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (API Get Wallet)] action in Column widget.
  ApiCallResponse? refreshWallet;
  // Stores action output result for [Backend Call - API (getActivities)] action in Column widget.
  ApiCallResponse? refreshActivities;
  // Stores action output result for [Backend Call - API (Statistic)] action in Column widget.
  ApiCallResponse? refreshStatistic;
  // Stores action output result for [Backend Call - API (getPackageInvestment)] action in Column widget.
  ApiCallResponse? packageInvestment;
  // Stores action output result for [Backend Call - API (FAQ)] action in Column widget.
  ApiCallResponse? faq;
  // Model for WalletCopy component.
  late WalletCopyModel walletCopyModel;
  // State field(s) for dropTimeFirst widget.
  String? dropTimeFirstValue;
  // Stores action output result for [Backend Call - API (Statistic)] action in dropTimeFirst widget.
  ApiCallResponse? chartO;
  // Model for Waiting component.
  late WaitingModel waitingModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for Waiting component.
  late WaitingModel waitingModel2;
  // Model for Frequently component.
  late FrequentlyModel frequentlyModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    walletCopyModel = createModel(context, () => WalletCopyModel());
    waitingModel1 = createModel(context, () => WaitingModel());
    waitingModel2 = createModel(context, () => WaitingModel());
    frequentlyModel = createModel(context, () => FrequentlyModel());
  }

  void dispose() {
    walletCopyModel.dispose();
    waitingModel1.dispose();
    waitingModel2.dispose();
    frequentlyModel.dispose();
  }

  /// Additional helper methods are added here.

}
