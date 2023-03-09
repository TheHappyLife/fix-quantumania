import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
import '/components/transaction_status/transaction_status_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopupTransactionModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for transactionStatus component.
  late TransactionStatusModel transactionStatusModel;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel1;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel2;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel3;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel4;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    transactionStatusModel =
        createModel(context, () => TransactionStatusModel());
    totalGroupItemModel1 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel2 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel3 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel4 = createModel(context, () => TotalGroupItemModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    transactionStatusModel.dispose();
    totalGroupItemModel1.dispose();
    totalGroupItemModel2.dispose();
    totalGroupItemModel3.dispose();
    totalGroupItemModel4.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
