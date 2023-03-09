import '/backend/api_requests/api_calls.dart';
import '/components/container_1/container1_widget.dart';
import '/components/emty/emty_widget.dart';
import '/components/frequently/frequently_widget.dart';
import '/components/headline_section_group_title/headline_section_group_title_widget.dart';
import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_buy_invest/modal_buy_invest_widget.dart';
import '/components/modal_my_investment_withdraw/modal_my_investment_withdraw_widget.dart';
import '/components/rounded_day_expired/rounded_day_expired_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/waiting/waiting_widget.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OverviewPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Container_1 component.
  late Container1Model container1Model1;
  // Model for Container_1 component.
  late Container1Model container1Model2;
  // State field(s) for dropTimeFirst widget.
  String? dropTimeFirstValue;
  // Stores action output result for [Backend Call - API (Statistic)] action in dropTimeFirst widget.
  ApiCallResponse? chartO;
  // State field(s) for PageViewOverview widget.
  PageController? pageViewOverviewController;
  // Model for Waiting component.
  late WaitingModel waitingModel1;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel1;
  // State field(s) for PageView widget.
  PageController? pageViewController1;
  // Model for Waiting component.
  late WaitingModel waitingModel2;
  // Model for Waiting component.
  late WaitingModel waitingModel3;
  // Model for Frequently component.
  late FrequentlyModel frequentlyModel1;
  // Model for Waiting component.
  late WaitingModel waitingModel4;
  // Model for Headline_Section_Group_Title component.
  late HeadlineSectionGroupTitleModel headlineSectionGroupTitleModel2;
  // State field(s) for PageView widget.
  PageController? pageViewController2;
  // Model for Frequently component.
  late FrequentlyModel frequentlyModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    container1Model1 = createModel(context, () => Container1Model());
    container1Model2 = createModel(context, () => Container1Model());
    waitingModel1 = createModel(context, () => WaitingModel());
    headlineSectionGroupTitleModel1 =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    waitingModel2 = createModel(context, () => WaitingModel());
    waitingModel3 = createModel(context, () => WaitingModel());
    frequentlyModel1 = createModel(context, () => FrequentlyModel());
    waitingModel4 = createModel(context, () => WaitingModel());
    headlineSectionGroupTitleModel2 =
        createModel(context, () => HeadlineSectionGroupTitleModel());
    frequentlyModel2 = createModel(context, () => FrequentlyModel());
  }

  void dispose() {
    container1Model1.dispose();
    container1Model2.dispose();
    waitingModel1.dispose();
    headlineSectionGroupTitleModel1.dispose();
    waitingModel2.dispose();
    waitingModel3.dispose();
    frequentlyModel1.dispose();
    waitingModel4.dispose();
    headlineSectionGroupTitleModel2.dispose();
    frequentlyModel2.dispose();
  }

  /// Additional helper methods are added here.

}
