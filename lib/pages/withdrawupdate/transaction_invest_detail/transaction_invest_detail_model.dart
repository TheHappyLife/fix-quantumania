import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/transaction_detail_state_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TransactionInvestDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for transaction_detail_state component.
  late TransactionDetailStateModel transactionDetailStateModel;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel1;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel2;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    transactionDetailStateModel =
        createModel(context, () => TransactionDetailStateModel());
    totalGroupItemModel1 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel2 = createModel(context, () => TotalGroupItemModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    transactionDetailStateModel.dispose();
    totalGroupItemModel1.dispose();
    totalGroupItemModel2.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
