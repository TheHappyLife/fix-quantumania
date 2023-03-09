import '/components/aff_congrats/aff_congrats_widget.dart';
import '/components/header_nav_back/header_nav_back_widget.dart';
import '/components/item_data/item_data_widget.dart';
import '/components/modal_full/modal_full_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class AffiliateSubAffDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for Header_Nav_Back component.
  late HeaderNavBackModel headerNavBackModel;
  // Model for Aff_congrats component.
  late AffCongratsModel affCongratsModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // Model for Item_data component.
  late ItemDataModel itemDataModel1;
  // Model for Item_data component.
  late ItemDataModel itemDataModel2;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headerNavBackModel = createModel(context, () => HeaderNavBackModel());
    affCongratsModel = createModel(context, () => AffCongratsModel());
    itemDataModel1 = createModel(context, () => ItemDataModel());
    itemDataModel2 = createModel(context, () => ItemDataModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headerNavBackModel.dispose();
    affCongratsModel.dispose();
    itemDataModel1.dispose();
    itemDataModel2.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
