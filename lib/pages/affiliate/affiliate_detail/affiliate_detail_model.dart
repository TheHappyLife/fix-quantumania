import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/aff_navigation_2/aff_navigation2_widget.dart';
import '/components/investment_pack_item_inner_1_top_icon_2/investment_pack_item_inner1_top_icon2_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffiliateDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Aff_congrats component.
  late AffCongratsModel affCongratsModel;
  // Model for Aff_navigation_2 component.
  late AffNavigation2Model affNavigation2Model;
  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for Investment_pack_item_inner_1_top_icon_2 component.
  late InvestmentPackItemInner1TopIcon2Model
      investmentPackItemInner1TopIcon2Model;
  // Model for Item_data component.
  late ItemDataModel itemDataModel1;
  // Model for Item_data component.
  late ItemDataModel itemDataModel2;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    affCongratsModel = createModel(context, () => AffCongratsModel());
    affNavigation2Model = createModel(context, () => AffNavigation2Model());
    investmentPackItemInner1TopIcon2Model =
        createModel(context, () => InvestmentPackItemInner1TopIcon2Model());
    itemDataModel1 = createModel(context, () => ItemDataModel());
    itemDataModel2 = createModel(context, () => ItemDataModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    affCongratsModel.dispose();
    affNavigation2Model.dispose();
    investmentPackItemInner1TopIcon2Model.dispose();
    itemDataModel1.dispose();
    itemDataModel2.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
