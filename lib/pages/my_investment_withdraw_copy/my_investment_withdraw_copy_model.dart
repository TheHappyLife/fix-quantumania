import '/backend/api_requests/api_calls.dart';
import '/components/investment_pack_item_inner_1_top/investment_pack_item_inner1_top_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/item_data_2/item_data2_widget.dart';
import '/components/modal_my_withdraw_success/modal_my_withdraw_success_widget.dart';
import '/components/total_noti_bottom/total_noti_bottom_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MyInvestmentWithdrawCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for Investment_pack_item_inner_1_top component.
  late InvestmentPackItemInner1TopModel investmentPackItemInner1TopModel;
  // Model for Item_data_2 component.
  late ItemData2Model itemData2Model;
  // Model for Item_data component.
  late ItemDataModel itemDataModel1;
  // Model for Item_data component.
  late ItemDataModel itemDataModel2;
  // Model for Item_data component.
  late ItemDataModel itemDataModel3;
  // Model for Item_data component.
  late ItemDataModel itemDataModel4;
  // Model for Item_data component.
  late ItemDataModel itemDataModel5;
  // State field(s) for FieldAmount widget.
  TextEditingController? fieldAmountController;
  String? Function(BuildContext, String?)? fieldAmountControllerValidator;
  String? _fieldAmountControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter amount your want to withdraw';
    }

    if (!RegExp('^(?!\\.)((0*[1-9]\\d*)|(0*\\.\\d+)|([1-9]\\d*\\.\\d+))\$')
        .hasMatch(val)) {
      return 'Please try enter number type interger or decimal';
    }
    return null;
  }

  // Model for Total_noti_bottom component.
  late TotalNotiBottomModel totalNotiBottomModel1;
  // Model for Total_noti_bottom component.
  late TotalNotiBottomModel totalNotiBottomModel2;
  // Stores action output result for [Backend Call - API (withdraWalletInternal)] action in Button widget.
  ApiCallResponse? withdrawResponse;
  // Stores action output result for [Backend Call - API (GetInventory)] action in Button widget.
  ApiCallResponse? responseInventory;
  // Stores action output result for [Backend Call - API (API Get Wallet)] action in Button widget.
  ApiCallResponse? responseWallet;
  // Stores action output result for [Backend Call - API (getActivities)] action in Button widget.
  ApiCallResponse? responseActivitiy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    investmentPackItemInner1TopModel =
        createModel(context, () => InvestmentPackItemInner1TopModel());
    itemData2Model = createModel(context, () => ItemData2Model());
    itemDataModel1 = createModel(context, () => ItemDataModel());
    itemDataModel2 = createModel(context, () => ItemDataModel());
    itemDataModel3 = createModel(context, () => ItemDataModel());
    itemDataModel4 = createModel(context, () => ItemDataModel());
    itemDataModel5 = createModel(context, () => ItemDataModel());
    fieldAmountControllerValidator = _fieldAmountControllerValidator;
    totalNotiBottomModel1 = createModel(context, () => TotalNotiBottomModel());
    totalNotiBottomModel2 = createModel(context, () => TotalNotiBottomModel());
  }

  void dispose() {
    investmentPackItemInner1TopModel.dispose();
    itemData2Model.dispose();
    itemDataModel1.dispose();
    itemDataModel2.dispose();
    itemDataModel3.dispose();
    itemDataModel4.dispose();
    itemDataModel5.dispose();
    fieldAmountController?.dispose();
    totalNotiBottomModel1.dispose();
    totalNotiBottomModel2.dispose();
  }

  /// Additional helper methods are added here.

}
