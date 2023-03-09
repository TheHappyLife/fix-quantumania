import '/backend/api_requests/api_calls.dart';
import '/components/emty/emty_widget.dart';
import '/components/headline_section_title/headline_section_title_widget.dart';
import '/components/nav_bar_main/nav_bar_main_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AllActivitiesModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;
  // Model for Headline_Section_Title component.
  late HeadlineSectionTitleModel headlineSectionTitleModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  // Model for Nav_Bar_Main component.
  late NavBarMainModel navBarMainModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headlineSectionTitleModel =
        createModel(context, () => HeadlineSectionTitleModel());
    navBarMainModel = createModel(context, () => NavBarMainModel());
  }

  void dispose() {
    headlineSectionTitleModel.dispose();
    navBarMainModel.dispose();
  }

  /// Additional helper methods are added here.

}
