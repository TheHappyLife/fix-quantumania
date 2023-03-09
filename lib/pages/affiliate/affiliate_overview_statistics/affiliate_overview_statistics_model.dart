import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/aff_sub_aff/aff_sub_aff_widget.dart';
import '/components/card_info_statistics_text/card_info_statistics_text_widget.dart';
import '/components/investment_pack_item_2/investment_pack_item2_widget.dart';
import '/components/investment_pack_item_inner_1_top_badge/investment_pack_item_inner1_top_badge_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffiliateOverviewStatisticsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Aff_congrats component.
  late AffCongratsModel affCongratsModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // Model for Card_Info_Statistics_Text component.
  late CardInfoStatisticsTextModel cardInfoStatisticsTextModel;
  // Model for Investment_pack_item_inner_1_top_badge component.
  late InvestmentPackItemInner1TopBadgeModel
      investmentPackItemInner1TopBadgeModel;
  // Model for Investment_pack_item_2 component.
  late InvestmentPackItem2Model investmentPackItem2Model1;
  // Model for Investment_pack_item_2 component.
  late InvestmentPackItem2Model investmentPackItem2Model2;
  // Model for Investment_pack_item_2 component.
  late InvestmentPackItem2Model investmentPackItem2Model3;
  // Model for Investment_pack_item_2 component.
  late InvestmentPackItem2Model investmentPackItem2Model4;
  // Model for Aff_Sub_aff component.
  late AffSubAffModel affSubAffModel;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    affCongratsModel = createModel(context, () => AffCongratsModel());
    cardInfoStatisticsTextModel =
        createModel(context, () => CardInfoStatisticsTextModel());
    investmentPackItemInner1TopBadgeModel =
        createModel(context, () => InvestmentPackItemInner1TopBadgeModel());
    investmentPackItem2Model1 =
        createModel(context, () => InvestmentPackItem2Model());
    investmentPackItem2Model2 =
        createModel(context, () => InvestmentPackItem2Model());
    investmentPackItem2Model3 =
        createModel(context, () => InvestmentPackItem2Model());
    investmentPackItem2Model4 =
        createModel(context, () => InvestmentPackItem2Model());
    affSubAffModel = createModel(context, () => AffSubAffModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    affCongratsModel.dispose();
    cardInfoStatisticsTextModel.dispose();
    investmentPackItemInner1TopBadgeModel.dispose();
    investmentPackItem2Model1.dispose();
    investmentPackItem2Model2.dispose();
    investmentPackItem2Model3.dispose();
    investmentPackItem2Model4.dispose();
    affSubAffModel.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
