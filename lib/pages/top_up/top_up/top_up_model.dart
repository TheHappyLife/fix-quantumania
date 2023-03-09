import '/backend/api_requests/api_calls.dart';
import '/components/container_1/container1_widget.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/wallet/wallet_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class TopUpModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Container_1 component.
  late Container1Model container1Model1;
  // Model for Container_1 component.
  late Container1Model container1Model2;
  // Model for Wallet component.
  late WalletModel walletModel;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Tracking wallet)] action in Button widget.
  ApiCallResponse? apiResulttyk;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container1Model1 = createModel(context, () => Container1Model());
    container1Model2 = createModel(context, () => Container1Model());
    walletModel = createModel(context, () => WalletModel());
    headlineSectionGroupTitleModel =
        createModel(context, () => HeadlineSectionGroupTitleModel());
  }

  void dispose() {
    container1Model1.dispose();
    container1Model2.dispose();
    walletModel.dispose();
    headlineSectionGroupTitleModel.dispose();
  }

  /// Additional helper methods are added here.

}
