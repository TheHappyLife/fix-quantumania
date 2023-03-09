import '/backend/api_requests/api_calls.dart';
import '/components/account_page_new/account_page_new_widget.dart';
import '/components/aff_component/aff_component_widget.dart';
import '/components/noti_page/noti_page_widget.dart';
import '/components/overview_main_update/overview_main_update_widget.dart';
import '/components/overview_page_copy/overview_page_copy_widget.dart';
import '/components/profile_page/profile_page_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - checkDataExistInTable] action in MainPage widget.
  bool? isExist;
  // Stores action output result for [Custom Action - compareDateCurrent] action in MainPage widget.
  bool? compareOutput;
  // Stores action output result for [Backend Call - API (Statistic)] action in MainPage widget.
  ApiCallResponse? statisticUpdate;
  // Stores action output result for [Backend Call - API (API Login)] action in MainPage widget.
  ApiCallResponse? loginUpdate;
  // Stores action output result for [Backend Call - API (GetInventory)] action in MainPage widget.
  ApiCallResponse? inventoryRefresh;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in MainPage widget.
  ApiCallResponse? wallet;
  // Stores action output result for [Backend Call - API (Get SubAff)] action in MainPage widget.
  ApiCallResponse? responseAffSub2;
  // Stores action output result for [Backend Call - API (Get Statistic)] action in MainPage widget.
  ApiCallResponse? statisticAff;
  // Stores action output result for [Backend Call - API (FAQ)] action in MainPage widget.
  ApiCallResponse? faqResponse;
  // Stores action output result for [Backend Call - API (API Profile)] action in MainPage widget.
  ApiCallResponse? responseProfile;
  // Stores action output result for [Backend Call - API (API Login)] action in MainPage widget.
  ApiCallResponse? loginResponse;
  // Stores action output result for [Backend Call - API (Statistic)] action in MainPage widget.
  ApiCallResponse? responseStatistic;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in MainPage widget.
  ApiCallResponse? responseWallet;
  // Stores action output result for [Backend Call - API (getPackageInvestment)] action in MainPage widget.
  ApiCallResponse? packageNoRecommend;
  // Stores action output result for [Backend Call - API (GetInventory)] action in MainPage widget.
  ApiCallResponse? responseInventory;
  // Stores action output result for [Backend Call - API (API Notification)] action in MainPage widget.
  ApiCallResponse? responseNoti;
  // Stores action output result for [Backend Call - API (getActivities)] action in MainPage widget.
  ApiCallResponse? responseActivities;
  // Stores action output result for [Backend Call - API (Get SubAff)] action in MainPage widget.
  ApiCallResponse? responseAffSub;
  // Stores action output result for [Backend Call - API (Get Statistic)] action in MainPage widget.
  ApiCallResponse? apiResult59c;
  // Model for NotiPage component.
  late NotiPageModel notiPageModel;
  // Model for ProfilePage component.
  late ProfilePageModel profilePageModel;
  // Model for AccountPageNew component.
  late AccountPageNewModel accountPageNewModel;
  // Model for OverviewPageCopy component.
  late OverviewPageCopyModel overviewPageCopyModel;
  // Model for Aff_Component component.
  late AffComponentModel affComponentModel;
  // Model for overview_main_update component.
  late OverviewMainUpdateModel overviewMainUpdateModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notiPageModel = createModel(context, () => NotiPageModel());
    profilePageModel = createModel(context, () => ProfilePageModel());
    accountPageNewModel = createModel(context, () => AccountPageNewModel());
    overviewPageCopyModel = createModel(context, () => OverviewPageCopyModel());
    affComponentModel = createModel(context, () => AffComponentModel());
    overviewMainUpdateModel =
        createModel(context, () => OverviewMainUpdateModel());
  }

  void dispose() {
    notiPageModel.dispose();
    profilePageModel.dispose();
    accountPageNewModel.dispose();
    overviewPageCopyModel.dispose();
    affComponentModel.dispose();
    overviewMainUpdateModel.dispose();
  }

  /// Additional helper methods are added here.

}
