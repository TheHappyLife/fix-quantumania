import '/components/investment_pack_item_4/investment_pack_item4_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/total_group_item/total_group_item_widget.dart';
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

class ModalBuyInvestModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Investment_pack_item_inner_1_top_badge component.
  late InvestmentPackItemInner1TopBadgeModel
      investmentPackItemInner1TopBadgeModel;
  // Model for Investment_pack_item_4 component.
  late InvestmentPackItem4Model investmentPackItem4Model1;
  // Model for Investment_pack_item_4 component.
  late InvestmentPackItem4Model investmentPackItem4Model2;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel1;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel2;
  // Model for Total_Group_Item component.
  late TotalGroupItemModel totalGroupItemModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    investmentPackItemInner1TopBadgeModel =
        createModel(context, () => InvestmentPackItemInner1TopBadgeModel());
    investmentPackItem4Model1 =
        createModel(context, () => InvestmentPackItem4Model());
    investmentPackItem4Model2 =
        createModel(context, () => InvestmentPackItem4Model());
    totalGroupItemModel1 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel2 = createModel(context, () => TotalGroupItemModel());
    totalGroupItemModel3 = createModel(context, () => TotalGroupItemModel());
  }

  void dispose() {
    investmentPackItemInner1TopBadgeModel.dispose();
    investmentPackItem4Model1.dispose();
    investmentPackItem4Model2.dispose();
    totalGroupItemModel1.dispose();
    totalGroupItemModel2.dispose();
    totalGroupItemModel3.dispose();
  }

  /// Additional helper methods are added here.

}
