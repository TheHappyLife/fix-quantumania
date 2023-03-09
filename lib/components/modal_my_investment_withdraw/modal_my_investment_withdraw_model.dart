import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_withdraw_cash_ogirin_failure/modal_withdraw_cash_ogirin_failure_widget.dart';
import '/components/modal_withdraw_cash_origin_success/modal_withdraw_cash_origin_success_widget.dart';
import '/components/rounded_day_expired/rounded_day_expired_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModalMyInvestmentWithdrawModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Investment_pack_item_inner_1_top_badge component.
  late InvestmentPackItemInner1TopBadgeModel
      investmentPackItemInner1TopBadgeModel;
  // Model for Item_data_2 component.
  late ItemData2Model itemData2Model;
  // Model for Item_data component.
  late ItemDataModel itemDataModel1;
  // Model for Item_data component.
  late ItemDataModel itemDataModel2;
  // Model for Item_data component.
  late ItemDataModel itemDataModel3;
  // Model for Rounded_Day_Expired component.
  late RoundedDayExpiredModel roundedDayExpiredModel;
  // Stores action output result for [Backend Call - API (Withdraw cash origin)] action in Button widget.
  ApiCallResponse? responseWithdraw;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in Button widget.
  ApiCallResponse? responseWallet;
  // Stores action output result for [Backend Call - API (GetInventory)] action in Button widget.
  ApiCallResponse? responseInventory;
  // Stores action output result for [Backend Call - API (getActivities)] action in Button widget.
  ApiCallResponse? responseActivity;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    investmentPackItemInner1TopBadgeModel =
        createModel(context, () => InvestmentPackItemInner1TopBadgeModel());
    itemData2Model = createModel(context, () => ItemData2Model());
    itemDataModel1 = createModel(context, () => ItemDataModel());
    itemDataModel2 = createModel(context, () => ItemDataModel());
    itemDataModel3 = createModel(context, () => ItemDataModel());
    roundedDayExpiredModel =
        createModel(context, () => RoundedDayExpiredModel());
  }

  void dispose() {
    investmentPackItemInner1TopBadgeModel.dispose();
    itemData2Model.dispose();
    itemDataModel1.dispose();
    itemDataModel2.dispose();
    itemDataModel3.dispose();
    roundedDayExpiredModel.dispose();
  }

  /// Additional helper methods are added here.

}
