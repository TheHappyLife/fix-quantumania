import '/components/headline_section_title/headline_section_title_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HeadlineSectionViewAllModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // Model for Headline_Section_Title component.
  late HeadlineSectionTitleModel headlineSectionTitleModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    headlineSectionTitleModel =
        createModel(context, () => HeadlineSectionTitleModel());
  }

  void dispose() {
    headlineSectionTitleModel.dispose();
  }

  /// Additional helper methods are added here.

}
